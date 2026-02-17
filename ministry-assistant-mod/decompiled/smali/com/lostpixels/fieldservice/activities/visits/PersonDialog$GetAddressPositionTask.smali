.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAddressPositionTask"
.end annotation


# instance fields
.field private bAllOK:Z

.field private final context:Landroid/content/Context;

.field private final person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 2222
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    .line 2223
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2224
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 2225
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2217
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const/4 p1, 0x0

    .line 2251
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;->bAllOK:Z

    .line 2253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2255
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getCityFromPosition(Landroid/content/Context;)Lcom/lostpixels/fieldservice/utils/Triplet;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2260
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2261
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/utils/Triplet;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2262
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2263
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/utils/Triplet;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2265
    :cond_0
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2266
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2267
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/utils/Triplet;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2269
    :goto_0
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/utils/Triplet;->getThird()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 2271
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 2274
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;->context:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getLatLongFromAddress(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2276
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    const/4 p1, 0x1

    .line 2277
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;->bAllOK:Z

    :cond_2
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 2217
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 2234
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;->bAllOK:Z

    if-nez p1, :cond_0

    .line 2235
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;->context:Landroid/content/Context;

    const v0, 0x7f1203f9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2236
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 2240
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
