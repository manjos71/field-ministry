.class Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$4;
.super Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->updatePosition(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;Landroid/app/Activity;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$personId:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 227
    iput-wide p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$4;->val$personId:J

    invoke-direct {p0}, Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;-><init>()V

    return-void
.end method


# virtual methods
.method public gotLocation(Landroid/location/Location;)V
    .locals 7

    .line 230
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 232
    :try_start_0
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$4;->val$personId:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 234
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 235
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 234
    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 237
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->updateVisitPosition(Lio/realm/Realm;Lcom/google/android/gms/maps/model/LatLng;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    const/4 p1, 0x1

    .line 239
    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->-$$Nest$sfputmbHasLocation(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 242
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 243
    throw p1
.end method
