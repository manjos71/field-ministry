.class public Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;
.super Lcom/google/android/gms/maps/SupportMapFragment;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnMapInitListener;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnListItemClickListener;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;
    }
.end annotation


# static fields
.field private static mVisitPosition:Lcom/google/android/gms/maps/model/LatLng;

.field private static mZoom:F


# instance fields
.field private addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

.field private googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private initListener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnMapInitListener;

.field private listener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnListItemClickListener;

.field private mInfoButtonListener:Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;

.field private mLastMarker:Lcom/google/android/gms/maps/model/Marker;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mMapFrame:Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;

.field private mMarkerBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field private mTerritoryBorder:Lcom/google/android/gms/maps/model/Polyline;

.field private final markerMap:Ljava/util/HashMap;

.field private mbIsSateliteView:Z

.field private miOffsetX:I

.field private mimgMoreButton:Landroid/widget/ImageView;

.field realm:Lio/realm/Realm;

.field private snackbar:Lcom/google/android/material/snackbar/Snackbar;


# direct methods
.method static bridge synthetic -$$Nest$fgetaddHandler(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgoogleApiClient(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnListItemClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->listener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnListItemClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInfoButtonListener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mInfoButtonListener:Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMap(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMapFrame(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMapFrame:Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMarkerBounds(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMarkerBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmimgMoreButton(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mimgMoreButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmInfoButtonListener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mInfoButtonListener:Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmimgMoreButton(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;Landroid/widget/ImageView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mimgMoreButton:Landroid/widget/ImageView;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMarkerData(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;Lcom/google/android/gms/maps/model/Marker;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->getMarkerData(Lcom/google/android/gms/maps/model/Marker;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportMapFragment;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 116
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->markerMap:Ljava/util/HashMap;

    return-void
.end method

.method private createMapPinList()V
    .locals 14

    .line 504
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->markerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 510
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_1

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mTerritoryBorder:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_3

    .line 513
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 517
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryBorder()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 518
    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 519
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryBorder()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    .line 520
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$latitude()D

    move-result-wide v5

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$longitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    goto :goto_2

    .line 522
    :cond_4
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    const/high16 v3, -0x10000

    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mTerritoryBorder:Lcom/google/android/gms/maps/model/Polyline;

    int-to-float v2, v1

    .line 523
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/Polyline;->setZIndex(F)V

    const/4 v0, 0x2

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    .line 526
    :goto_3
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->markerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 527
    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 529
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 530
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    invoke-interface {v6, v5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;->onShouldAddStreet(Lcom/lostpixels/fieldservice/internal/ministry/Street;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_4

    .line 534
    :cond_7
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 535
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    invoke-interface {v8, v7}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;->onShouldAddAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_5

    .line 539
    :cond_9
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 540
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    invoke-interface {v9, v8}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;->onShouldAddVisit(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 541
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 543
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 546
    new-instance v4, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v4}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 547
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 548
    invoke-virtual {v4, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 549
    invoke-direct {p0, v8}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->getMarker(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I

    move-result v9

    invoke-static {v9}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 550
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v9, v4}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    .line 551
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/maps/model/Marker;->setZIndex(F)V

    .line 552
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getId()J

    move-result-wide v10

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v12

    invoke-direct {v0, v10, v11, v12, v13}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;-><init>(JJ)V

    invoke-direct {p0, v4, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->setMarkerData(Lcom/google/android/gms/maps/model/Marker;Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;)V

    move v0, v9

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    if-eqz v4, :cond_c

    .line 560
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMarkerBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 562
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMarkerBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-void
.end method

.method private getMarker(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I
    .locals 0

    .line 569
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const p1, 0x7f080322

    return p1

    :pswitch_1
    const p1, 0x7f08032e

    return p1

    :pswitch_2
    const p1, 0x7f080323

    return p1

    :pswitch_3
    const p1, 0x7f08032a

    return p1

    :pswitch_4
    const p1, 0x7f080332

    return p1

    :pswitch_5
    const p1, 0x7f080325

    return p1

    :pswitch_6
    const p1, 0x7f08032f

    return p1

    :pswitch_7
    const p1, 0x7f08032c

    return p1

    :pswitch_8
    const p1, 0x7f08031f

    return p1

    :pswitch_9
    const p1, 0x7f08032d

    return p1

    :pswitch_a
    const p1, 0x7f080320

    return p1

    :pswitch_b
    const p1, 0x7f080330

    return p1

    :pswitch_c
    const p1, 0x7f080331

    return p1

    :pswitch_d
    const p1, 0x7f08032b

    return p1

    :pswitch_e
    const p1, 0x7f08031a

    return p1

    :pswitch_f
    const p1, 0x7f080321

    return p1

    :pswitch_10
    const p1, 0x7f080324

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getMarkerData(Lcom/google/android/gms/maps/model/Marker;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;
    .locals 5

    .line 133
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->markerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;

    .line 134
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->realm:Lio/realm/Realm;

    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;->street:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 135
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->realm:Lio/realm/Realm;

    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    iget-wide v3, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;->visit:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 136
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;

    invoke-direct {v1, v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Street;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    return-object v1
.end method

.method private static getPixelsFromDp(Landroid/content/Context;F)I
    .locals 0

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private setMarkerData(Lcom/google/android/gms/maps/model/Marker;Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->markerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private showQuickAction(IILcom/google/android/gms/maps/model/LatLng;)V
    .locals 5

    .line 826
    new-instance v0, Lcom/lostpixels/fieldservice/ui/ActionItem;

    const v1, 0x7f120354

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Lcom/lostpixels/fieldservice/ui/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 828
    new-instance v1, Lcom/lostpixels/fieldservice/ui/ActionItem;

    const v2, 0x7f120523

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080350

    .line 829
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x7

    invoke-direct {v1, v4, v2, v3}, Lcom/lostpixels/fieldservice/ui/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 831
    new-instance v2, Lcom/lostpixels/fieldservice/ui/QuickAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/lostpixels/fieldservice/ui/QuickAction;-><init>(Landroid/content/Context;I)V

    .line 832
    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$8;

    invoke-direct {v3, p0, p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$8;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/ui/QuickAction;->setOnActionItemClickListener(Lcom/lostpixels/fieldservice/ui/QuickAction$OnActionItemClickListener;)V

    .line 847
    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/ui/QuickAction;->addActionItem(Lcom/lostpixels/fieldservice/ui/ActionItem;)V

    .line 848
    invoke-virtual {v2, v1}, Lcom/lostpixels/fieldservice/ui/QuickAction;->addActionItem(Lcom/lostpixels/fieldservice/ui/ActionItem;)V

    const/4 p3, 0x5

    .line 849
    invoke-virtual {v2, p3}, Lcom/lostpixels/fieldservice/ui/QuickAction;->setAnimStyle(I)V

    .line 851
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroidx/appcompat/app/ActionBar;->getHeight()I

    move-result p3

    .line 852
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMapFrame:Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->miOffsetX:I

    add-int/2addr p1, v1

    add-int/2addr p2, p3

    invoke-virtual {v2, v0, p1, p2}, Lcom/lostpixels/fieldservice/ui/QuickAction;->show(Landroid/view/View;II)V

    return-void
.end method

.method private showUndoCreate(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 4

    .line 861
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01001f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 864
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010020

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 866
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 867
    const-string v1, "ID"

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 869
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    .line 870
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    invoke-interface {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;->getParentLayout()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f120442

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$9;

    invoke-direct {v1, p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$9;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;Landroid/os/Bundle;)V

    const v0, 0x7f1205ec

    .line 871
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz p1, :cond_0

    .line 907
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 908
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    .line 910
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 911
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 913
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    invoke-interface {v3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;->getBottomHeightOffset()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 914
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public followMyLocation(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 235
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)V

    .line 236
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)V

    .line 301
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_0
    if-eqz p1, :cond_1

    .line 311
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 313
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 315
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 318
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 321
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 322
    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 328
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_4

    .line 329
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    :cond_4
    return-void
.end method

.method protected getHouseholderImage(Lcom/lostpixels/fieldservice/internal/ministry/Person;)I
    .locals 1

    if-eqz p1, :cond_3

    .line 629
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f080384

    return p1

    :cond_1
    const p1, 0x7f08013c

    return p1

    :cond_2
    const p1, 0x7f080172

    return p1

    :cond_3
    :goto_0
    const p1, 0x7f0801fd

    return p1
.end method

.method public getInternalMap()Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method protected getVisitType(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I
    .locals 0

    .line 650
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const p1, 0x7f080182

    return p1

    :pswitch_1
    const p1, 0x7f0802db

    return p1

    :pswitch_2
    const p1, 0x7f0801e1

    return p1

    :pswitch_3
    const p1, 0x7f080298

    return p1

    :pswitch_4
    const p1, 0x7f08036f

    return p1

    :pswitch_5
    const p1, 0x7f0801ee

    return p1

    :pswitch_6
    const p1, 0x7f0802fb

    return p1

    :pswitch_7
    const p1, 0x7f0802b3

    return p1

    :pswitch_8
    const p1, 0x7f08016b

    return p1

    :pswitch_9
    const p1, 0x7f0802d7

    return p1

    :pswitch_a
    const p1, 0x7f080164

    return p1

    :pswitch_b
    const p1, 0x7f080301

    return p1

    :pswitch_c
    const p1, 0x7f080315

    return p1

    :pswitch_d
    const p1, 0x7f0802ae

    return p1

    :pswitch_e
    const p1, 0x7f0800d1

    return p1

    :pswitch_f
    const p1, 0x7f08016d

    return p1

    :pswitch_10
    const p1, 0x7f0801e8

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public hideInfoWindow()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mLastMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mLastMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 383
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 384
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->realm:Lio/realm/Realm;

    .line 385
    instance-of v0, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnListItemClickListener;

    if-eqz v0, :cond_2

    .line 386
    move-object v0, p1

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnListItemClickListener;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->listener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnListItemClickListener;

    .line 391
    instance-of v0, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnMapInitListener;

    if-eqz v0, :cond_1

    .line 392
    move-object v0, p1

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnMapInitListener;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->initListener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnMapInitListener;

    .line 397
    instance-of v0, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    if-eqz v0, :cond_0

    .line 398
    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    return-void

    .line 400
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implemenet OnAddVisitListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implemenet OnMapInitListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implemenet OnListItemClickListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    const v1, 0x7f0c0087

    .line 345
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/maps/SupportMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 346
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    if-nez v3, :cond_0

    .line 347
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 348
    :cond_0
    const-string v3, "TerritoryListMapFragmen"

    const-string v4, "onCreateView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    if-eqz p3, :cond_1

    .line 352
    const-string v3, "ShowSateliteView"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mbIsSateliteView:Z

    .line 353
    :cond_1
    invoke-virtual {p0, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 355
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {p3, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 356
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 357
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    const-string p3, "TerritoryListMapFragment.onCreateView"

    invoke-static {p3}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 363
    :catch_0
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 369
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->listener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnListItemClickListener;

    .line 371
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    .line 372
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->initListener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnMapInitListener;

    .line 373
    sput-object v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mVisitPosition:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v0, 0x0

    .line 374
    sput v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mZoom:F

    .line 375
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 377
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->clearProvider()V

    return-void
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2

    .line 819
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->getMarkerData(Lcom/google/android/gms/maps/model/Marker;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 822
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->listener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnListItemClickListener;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnListItemClickListener;

    iget-object v1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;->street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-interface {v0, v1, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnListItemClickListener;->onVisitClicked(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    :cond_0
    return-void
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 14

    .line 752
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 754
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 755
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 756
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 757
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v8, v4, v6

    if-nez v8, :cond_2

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_2

    goto :goto_0

    .line 764
    :cond_3
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 765
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    const/4 v1, 0x1

    .line 766
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    const v1, 0x7f080322

    .line 767
    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 768
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 769
    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 770
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 771
    new-instance v9, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    const/4 v3, 0x0

    invoke-direct {v9, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    .line 772
    new-instance v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {v2, v9}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 773
    invoke-virtual {v2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 774
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 775
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    invoke-virtual {v9, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->setVisits(Ljava/util/List;)V

    .line 777
    invoke-virtual {v1, v9}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 778
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v4, v5, v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object v1

    .line 779
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getId()J

    move-result-wide v5

    .line 780
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v7

    .line 781
    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getId()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v12

    invoke-direct {v3, v10, v11, v12, v13}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;-><init>(JJ)V

    invoke-direct {p0, v0, v3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->setMarkerData(Lcom/google/android/gms/maps/model/Marker;Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;)V

    .line 783
    invoke-direct {p0, v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->showUndoCreate(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    .line 785
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$7;

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$7;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;JJLcom/lostpixels/fieldservice/internal/ministry/Address;)V

    invoke-static {v0, p1, v3}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getAddressFromLatLong(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$GetAddressListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getAddressFromLatLong(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$GetAddressListener;)V

    .line 744
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    .line 745
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v0

    .line 746
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->showQuickAction(IILcom/google/android/gms/maps/model/LatLng;)V

    :cond_0
    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 3

    .line 149
    const-string v0, "http.agent"

    const-string v1, "Ministry Assistant"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mbIsSateliteView:Z

    invoke-static {p1, v0, v1}, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->setMapType(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Z)V

    .line 154
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 155
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    .line 156
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 157
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 158
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 159
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 160
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 162
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMapFrame:Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;

    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x426c0000    # 59.0f

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->getPixelsFromDp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;->init(Lcom/google/android/gms/maps/GoogleMap;I)V

    .line 165
    :cond_0
    sget-object p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mVisitPosition:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz p1, :cond_1

    sget p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mZoom:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 166
    new-instance p1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    sget-object v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mVisitPosition:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    sget v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mZoom:F

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p1

    .line 167
    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->initListener:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnMapInitListener;

    if-eqz p1, :cond_2

    .line 172
    invoke-interface {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnMapInitListener;->onMapInitDone()V

    :cond_2
    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mLastMarker:Lcom/google/android/gms/maps/model/Marker;

    const/4 p1, 0x0

    return p1
.end method

.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 6

    .line 718
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->getMarkerData(Lcom/google/android/gms/maps/model/Marker;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;

    move-result-object v0

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 719
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 720
    invoke-static {v0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 721
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$6;

    invoke-direct {v1, p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$6;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    invoke-static {v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    .line 729
    :cond_0
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 730
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    .line 731
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    :cond_1
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 185
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/SupportMapFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 186
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 188
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    double-to-float v0, v0

    .line 189
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    double-to-float v1, v1

    .line 190
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    float-to-double v3, v0

    float-to-double v0, v1

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    sput-object v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mVisitPosition:Lcom/google/android/gms/maps/model/LatLng;

    .line 191
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    sput v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mZoom:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 193
    const-string v1, "saveLastPosition"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_0
    const-string v0, "ShowSateliteView"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mbIsSateliteView:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 180
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/maps/SupportMapFragment;->onStop()V

    return-void
.end method

.method public setDefaultLocation()V
    .locals 8

    .line 458
    sget-object v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mVisitPosition:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryBorder()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryBorder()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 461
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 462
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryBorder()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    .line 463
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$latitude()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$longitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 467
    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_2

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_2

    .line 468
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    goto :goto_1

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMarkerBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v0, :cond_3

    .line 475
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$4;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$4;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    goto :goto_2

    :cond_3
    :goto_1
    move-object v0, v1

    goto :goto_2

    .line 483
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMarkerBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v0, :cond_5

    .line 484
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$5;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$5;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    goto :goto_2

    .line 492
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getLastKnownLocation(Landroid/content/Context;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 494
    :goto_2
    sget v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mZoom:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_6

    const/high16 v1, 0x41700000    # 15.0f

    :cond_6
    if-eqz v0, :cond_7

    .line 497
    new-instance v2, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 498
    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_7
    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    .line 200
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    .line 201
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->updateInfoWindow()V

    return-void
.end method

.method public setMapLayoutWrapper(Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMapFrame:Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;

    return-void
.end method

.method public setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-void
.end method

.method public showOnMap(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 7

    .line 439
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v0

    .line 441
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->markerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 442
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;

    iget-wide v4, v4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;->visit:J

    cmp-long v6, v4, v0

    if-nez v6, :cond_0

    .line 443
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 448
    :goto_0
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p1

    .line 449
    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 450
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    if-eqz v0, :cond_2

    .line 452
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    :cond_2
    return-void
.end method

.method public showSatelite(Z)V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0, v1, p1}, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->setMapType(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Z)V

    .line 337
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mbIsSateliteView:Z

    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    .line 405
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->createMapPinList()V

    return-void
.end method

.method public updateInfoWindow()V
    .locals 7

    .line 409
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mLastMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mLastMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    .line 411
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mLastMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->getMarkerData(Lcom/google/android/gms/maps/model/Marker;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mLastMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 413
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;->street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    if-eqz v1, :cond_0

    .line 414
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 415
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    const/4 v2, 0x1

    .line 416
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 417
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {p0, v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->getMarker(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 418
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mLastMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 419
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;

    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;->street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getId()J

    move-result-wide v3

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;-><init>(JJ)V

    invoke-direct {p0, v1, v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->setMarkerData(Lcom/google/android/gms/maps/model/Marker;Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfo;)V

    .line 420
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->mLastMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    :cond_0
    return-void
.end method
