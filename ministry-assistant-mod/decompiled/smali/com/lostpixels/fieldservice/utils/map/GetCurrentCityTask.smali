.class public Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask$CurrentCityListener;
    }
.end annotation


# static fields
.field private static country:Ljava/lang/String;

.field private static countryCode:Ljava/lang/String;


# instance fields
.field private city:Ljava/lang/String;

.field private final dialog:Landroid/app/ProgressDialog;

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask$CurrentCityListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask$CurrentCityListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->dialog:Landroid/app/ProgressDialog;

    .line 36
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->mListener:Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask$CurrentCityListener;

    .line 37
    iput-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->mContext:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->city:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9

    .line 67
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->city:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getLastKnownLocation(Landroid/content/Context;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 71
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getInstance()Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->mContext:Landroid/content/Context;

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getFromLocation(Landroid/content/Context;DDI)Ljava/util/List;

    move-result-object p1

    .line 74
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->city:Ljava/lang/String;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->city:Ljava/lang/String;

    .line 76
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->country:Ljava/lang/String;

    sput-object v0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->country:Ljava/lang/String;

    .line 77
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->countryCode:Ljava/lang/String;

    sput-object p1, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->countryCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_1
    :goto_0
    sget-object p1, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->country:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getLastKnownLocation(Landroid/content/Context;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 89
    :try_start_1
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getInstance()Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->mContext:Landroid/content/Context;

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getFromLocation(Landroid/content/Context;DDI)Ljava/util/List;

    move-result-object p1

    .line 92
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 93
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->country:Ljava/lang/String;

    sput-object v0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->country:Ljava/lang/String;

    .line 94
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->countryCode:Ljava/lang/String;

    sput-object p1, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->countryCode:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->city:Ljava/lang/String;

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 52
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :catch_0
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->mListener:Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask$CurrentCityListener;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->city:Ljava/lang/String;

    sget-object v1, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->country:Ljava/lang/String;

    sget-object v2, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->countryCode:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask$CurrentCityListener;->onGotCurrentCityComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->city:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 44
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->mContext:Landroid/content/Context;

    const v2, 0x7f1203f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
