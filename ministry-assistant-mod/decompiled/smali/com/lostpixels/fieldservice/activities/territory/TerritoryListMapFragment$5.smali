.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->setDefaultLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetmMap(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetmMarkerBounds(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void
.end method
