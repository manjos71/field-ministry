.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$GetAddressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

.field final synthetic val$address:Lcom/lostpixels/fieldservice/internal/ministry/Address;

.field final synthetic val$streetId:J

.field final synthetic val$territoryId:J


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;JJLcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    iput-wide p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$7;->val$streetId:J

    iput-wide p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$7;->val$territoryId:J

    iput-object p6, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$7;->val$address:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 788
    const-string p3, "id"

    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 791
    :try_start_0
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p4, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$7;->val$streetId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 792
    invoke-static {p4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$7;->val$territoryId:J

    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 794
    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 795
    const-class p1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p4, p1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$7;->val$address:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Address;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 808
    invoke-virtual {p4}, Lio/realm/Realm;->close()V

    return-void

    .line 799
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->setName(Ljava/lang/String;)V

    .line 801
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->mergeStreets()V

    .line 802
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    const/4 p3, 0x0

    .line 803
    invoke-virtual {p2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->sort(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 808
    invoke-virtual {p4}, Lio/realm/Realm;->close()V

    .line 809
    throw p1

    .line 808
    :cond_1
    invoke-virtual {p4}, Lio/realm/Realm;->close()V

    return-void
.end method
