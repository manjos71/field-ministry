.class Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;->onConnected(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2$2;->this$0:Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 391
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2$2;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 394
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2$2;->this$0:Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$2;->val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$PositionListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 398
    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$PositionListener;->onPositionFound(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 400
    :cond_1
    sget-object p1, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 401
    sget-object p1, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_2
    :goto_0
    return-void
.end method
