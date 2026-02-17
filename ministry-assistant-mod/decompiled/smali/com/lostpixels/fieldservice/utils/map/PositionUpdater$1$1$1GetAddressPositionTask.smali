.class Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->onClick(Landroid/view/View;)V
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

.field private final personId:J

.field final synthetic this$1:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 98
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->this$1:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;

    .line 99
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 100
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    .line 101
    iput-wide p2, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->personId:J

    .line 102
    iput-object p4, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->city:Ljava/lang/String;

    .line 103
    iput-object p5, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->country:Ljava/lang/String;

    .line 104
    iput-object p6, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->countryCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 5

    .line 138
    const-string p1, " "

    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    const/4 v1, 0x0

    .line 141
    :try_start_0
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->bAllOK:Z

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v2

    iget-wide v3, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->personId:J

    invoke-virtual {v2, v0, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v2

    if-nez v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->this$1:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;->val$alternativePerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 148
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v3, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->city:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 151
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->country:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->this$1:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->countryCode:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getLatLongFromAddress(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 158
    invoke-virtual {v2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 159
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->updateVisitPosition(Lio/realm/Realm;Lcom/google/android/gms/maps/model/LatLng;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    const/4 v1, 0x1

    .line 160
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->bAllOK:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_3
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object p1

    :cond_4
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    const/4 p1, 0x0

    return-object p1

    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 166
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->doInBackground([Ljava/lang/Void;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 3

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :catch_0
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->bAllOK:Z

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->this$1:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;->val$context:Landroid/content/Context;

    const v1, 0x7f1203f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->this$1:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;->val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;

    if-eqz v0, :cond_2

    .line 128
    invoke-interface {v0, p1}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;->onPositionFound(Lcom/google/android/gms/maps/model/LatLng;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->onPostExecute(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->this$1:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;->val$context:Landroid/content/Context;

    const v2, 0x7f1203f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
