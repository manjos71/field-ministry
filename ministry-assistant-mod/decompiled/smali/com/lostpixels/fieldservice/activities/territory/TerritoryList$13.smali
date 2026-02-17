.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$13;
.super Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->updatePosition(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

.field final synthetic val$visiId:J


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;J)V
    .locals 0

    .line 1568
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$13;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iput-wide p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$13;->val$visiId:J

    invoke-direct {p0}, Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;-><init>()V

    return-void
.end method


# virtual methods
.method public gotLocation(Landroid/location/Location;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 1572
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 1574
    :try_start_0
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "id"

    iget-wide v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$13;->val$visiId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 1575
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1577
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    .line 1578
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1580
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1582
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$13;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mbHasLocation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1584
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 1585
    throw p1

    :cond_1
    return-void
.end method
