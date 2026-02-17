.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetAddressPositionTask"
.end annotation


# instance fields
.field private bAllOK:Z

.field private final city:Ljava/lang/String;

.field private final country:Ljava/lang/String;

.field private final countryCode:Ljava/lang/String;

.field private final dialog:Landroid/app/ProgressDialog;

.field final synthetic this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;

.field private final visitId:J


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3166
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3167
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    .line 3168
    iput-wide p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->visitId:J

    .line 3169
    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->city:Ljava/lang/String;

    .line 3170
    iput-object p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->country:Ljava/lang/String;

    .line 3171
    iput-object p6, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->countryCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3153
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .line 3216
    const-string p1, "id"

    const-string v0, " "

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->bAllOK:Z

    .line 3218
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v1

    .line 3220
    :try_start_0
    const-class v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    iget-wide v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->visitId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 3221
    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;

    iget-object v4, v4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;

    iget-wide v4, v4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->val$territoryId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 3222
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 3223
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 3225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3226
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3227
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3228
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3229
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->city:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 3230
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3231
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->city:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 3233
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->country:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 3234
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3235
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->country:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3238
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;

    iget-object v4, v4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;

    iget-object v4, v4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->countryCode:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getLatLongFromAddress(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3240
    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 3241
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    .line 3242
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v4

    .line 3243
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v5

    .line 3242
    invoke-virtual {v4, v1, v5, v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 3245
    invoke-virtual {v4, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    :cond_3
    const/4 v3, 0x1

    .line 3247
    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->bAllOK:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 3252
    :cond_4
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    const/4 p1, 0x0

    return-object p1

    :goto_2
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 3253
    throw p1
.end method

.method protected onCancelled()V
    .locals 2

    .line 3205
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 3206
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3207
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    .line 3208
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 3209
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 3153
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 3183
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3184
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3190
    :catch_0
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->bAllOK:Z

    if-nez p1, :cond_1

    .line 3191
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v0, 0x7f1203f9

    .line 3192
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    .line 3191
    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p1

    .line 3192
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 3193
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 3194
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$4400(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/Realm;->refresh()V

    .line 3195
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3196
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    .line 3197
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

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

    .line 3176
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v2, 0x7f1203f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3177
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
