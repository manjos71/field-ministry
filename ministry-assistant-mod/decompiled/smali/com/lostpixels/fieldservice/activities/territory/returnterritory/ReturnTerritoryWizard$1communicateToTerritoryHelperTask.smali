.class Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->onCompleted(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "communicateToTerritoryHelperTask"
.end annotation


# instance fields
.field city:Ljava/lang/String;

.field final comment:Ljava/lang/String;

.field private final dialog:Landroid/app/ProgressDialog;

.field final posDefault:Lcom/google/android/gms/maps/model/LatLng;

.field final streetsForAdding:Ljava/util/List;

.field final streetsForUpdate:Ljava/util/List;

.field final territoryId:Ljava/lang/String;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

.field final synthetic val$listener:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$FinishedTerritoryHelperCommunication;

.field final synthetic val$returnToTH:Z

.field final visitsToAdd:Ljava/util/List;

.field final visitsToUpdate:Ljava/util/List;

.field final worked:Z


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$FinishedTerritoryHelperCommunication;Z)V
    .locals 6

    .line 195
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    iput-object p8, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->val$listener:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$FinishedTerritoryHelperCommunication;

    iput-boolean p9, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->val$returnToTH:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 196
    new-instance p8, Landroid/app/ProgressDialog;

    invoke-direct {p8, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p8, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->dialog:Landroid/app/ProgressDialog;

    .line 197
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fgetterritory(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p8

    invoke-static {p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p8}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getCity()Ljava/lang/String;

    move-result-object p8

    iput-object p8, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->city:Ljava/lang/String;

    .line 198
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fgetterritory(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p8

    invoke-static {p8}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getTerritoryId(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Ljava/lang/String;

    move-result-object p8

    iput-object p8, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->territoryId:Ljava/lang/String;

    .line 200
    new-instance p8, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {p8}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 202
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fgetterritory(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p9

    invoke-virtual {p9}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryBorder()Ljava/util/List;

    move-result-object p9

    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p9

    :goto_0
    invoke-interface {p9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    .line 203
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$latitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p8, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_0

    .line 205
    :cond_0
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fgetterritory(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryBorder()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 206
    invoke-virtual {p8}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p1

    .line 207
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/LatLngBounds;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->posDefault:Lcom/google/android/gms/maps/model/LatLng;

    goto :goto_1

    .line 209
    :cond_1
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 p8, 0x0

    invoke-direct {p1, p8, p9, p8, p9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->posDefault:Lcom/google/android/gms/maps/model/LatLng;

    .line 210
    :goto_1
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->visitsToAdd:Ljava/util/List;

    .line 211
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->visitsToUpdate:Ljava/util/List;

    .line 212
    iput-object p5, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->streetsForAdding:Ljava/util/List;

    .line 213
    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->streetsForUpdate:Ljava/util/List;

    .line 214
    iput-object p7, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->comment:Ljava/lang/String;

    .line 215
    iput-boolean p6, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->worked:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 176
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 18

    move-object/from16 v1, p0

    .line 249
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 251
    const-string v2, "Prepare looper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 255
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 257
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->visitsToUpdate:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "id"

    const-class v7, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 258
    invoke-virtual {v0, v7}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    invoke-virtual {v7, v6, v5}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 259
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 261
    :cond_0
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->visitsToAdd:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 262
    invoke-virtual {v0, v7}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    invoke-virtual {v8, v6, v5}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 263
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    .line 270
    :try_start_1
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getInstance()Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;

    move-result-object v11

    iget-object v12, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->posDefault:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v13, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/16 v17, 0x1

    move-wide v15, v5

    invoke-virtual/range {v11 .. v17}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getFromLocation(Landroid/content/Context;DDI)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    :goto_3
    if-eqz v0, :cond_2

    .line 276
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 277
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    iget-object v5, v5, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->city:Ljava/lang/String;

    iput-object v5, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->city:Ljava/lang/String;

    .line 278
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->countryCode:Ljava/lang/String;

    move-object v7, v0

    goto :goto_4

    :cond_2
    move-object v7, v10

    .line 282
    :goto_4
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->streetsForUpdate:Ljava/util/List;

    iget-object v5, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->city:Ljava/lang/String;

    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->territoryId:Ljava/lang/String;

    invoke-static {v0, v2, v3, v5, v6}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->updateExistingLocations(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 285
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    iget-object v5, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->streetsForAdding:Ljava/util/List;

    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->city:Ljava/lang/String;

    iget-object v8, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->territoryId:Ljava/lang/String;

    iget-object v9, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->posDefault:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static/range {v3 .. v9}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->addNewLocations(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_3
    move-object v2, v10

    .line 287
    :goto_5
    iget-boolean v3, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->val$returnToTH:Z

    if-eqz v3, :cond_4

    .line 288
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    iget-object v4, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->territoryId:Ljava/lang/String;

    iget-boolean v5, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->worked:Z

    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->comment:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/lostpixels/fieldservice/download/TerritoryHelperCommunicator;->returnTerritory(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_4
    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    if-eqz v2, :cond_6

    return-object v2

    :cond_6
    return-object v10
.end method

.method protected onCancelled()V
    .locals 0

    .line 242
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 176
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->val$listener:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$FinishedTerritoryHelperCommunication;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {v1, v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$FinishedTerritoryHelperCommunication;->onFinished(Z)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    const v2, 0x7f1205ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 222
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1communicateToTerritoryHelperTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
