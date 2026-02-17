.class Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$1GetAddressTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getAddressFromLatLong(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$GetAddressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetAddressTask"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final synthetic val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$GetAddressListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$GetAddressListener;)V
    .locals 0

    .line 173
    iput-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$1GetAddressTask;->val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$GetAddressListener;

    .line 174
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$1GetAddressTask;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 176
    invoke-static {p1, p1, p1, p1}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->-$$Nest$smsetFoundAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    .line 255
    aget-object p1, p1, v0

    .line 257
    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$1GetAddressTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/utils/NetworkUtils;->testInternetConnectionNoMessage(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 263
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getInstance()Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$1GetAddressTask;->mContext:Landroid/content/Context;

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v7, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getFromLocation(Landroid/content/Context;DDI)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_f

    .line 273
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 275
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    .line 278
    iget-object v1, p1, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->street:Ljava/lang/String;

    .line 279
    iget-object v3, p1, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->address:Ljava/lang/String;

    .line 282
    iget-object v4, p1, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->postalCode:Ljava/lang/String;

    .line 283
    const-string v5, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 285
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object v2, v1

    goto :goto_4

    :cond_1
    const/4 v6, 0x0

    .line 288
    :goto_0
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 289
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-lez v6, :cond_4

    .line 295
    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_6

    const/4 v6, 0x0

    .line 300
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 301
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_3
    if-lez v6, :cond_7

    .line 309
    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v0, v2

    :goto_4
    if-eqz v2, :cond_9

    .line 315
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    move-object v1, v2

    :cond_9
    :goto_5
    if-eqz v1, :cond_b

    .line 317
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_6

    :cond_a
    move-object v3, v1

    :cond_b
    :goto_6
    if-eqz v0, :cond_c

    .line 319
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    iget-object v1, p1, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->streetNumber:Ljava/lang/String;

    if-eqz v1, :cond_d

    move-object v0, v1

    :cond_d
    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    move-object v5, v0

    .line 324
    :goto_7
    :try_start_1
    iget-object p1, p1, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->city:Ljava/lang/String;

    invoke-static {v3, v5, p1, v4}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->-$$Nest$smsetFoundAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 327
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 330
    :goto_8
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    :cond_f
    return-object v2

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 266
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 169
    check-cast p1, [Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$1GetAddressTask;->doInBackground([Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$1GetAddressTask;->val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$GetAddressListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 341
    invoke-interface {v0, v1, v1, v1, v1}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$GetAddressListener;->onAddressFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 342
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$1GetAddressTask;->val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$GetAddressListener;

    if-eqz p1, :cond_1

    .line 343
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getFoundStreet()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getFoundAddressNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getFoundCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getFoundPostal()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$GetAddressListener;->onAddressFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
