.class public Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;,
        Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$UndoState;
    }
.end annotation


# instance fields
.field private fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private mAddMarker:Z

.field mFinalList:Ljava/util/ArrayList;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mLine:Lcom/google/android/gms/maps/model/Polyline;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mPositions:Ljava/util/List;

.field private mTerritoryName:Ljava/lang/String;

.field mUndoBuffer:Ljava/util/List;

.field private mbIsSateliteView:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmMap(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPositions(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTerritoryName(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mTerritoryName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAddMarker(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mAddMarker:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMap(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUpMap(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->setUpMap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mundo(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->undo()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0c00a3

    .line 83
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;-><init>(I)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mUndoBuffer:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mFinalList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mAddMarker:Z

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mbIsSateliteView:Z

    return-void
.end method

.method private addMarker(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4

    .line 360
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 361
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x41f00000    # 30.0f

    .line 362
    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 363
    :cond_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 365
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 366
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->midPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 367
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    const v3, 0x7f080234

    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {p1, v3, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 368
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    invoke-direct {v3, p0, p1, v1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;Lcom/google/android/gms/maps/model/Marker;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;Lcom/google/android/gms/maps/model/Marker;Z)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createFinalList()V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mFinalList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 318
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    .line 319
    rem-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_0

    .line 320
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mFinalList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawPlyline()V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mLine:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 527
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 528
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    .line 529
    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    goto :goto_0

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mLine:Lcom/google/android/gms/maps/model/Polyline;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 532
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Polyline;->setZIndex(F)V

    return-void
.end method

.method private indexOf(Lcom/google/android/gms/maps/model/Marker;)I
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    .line 513
    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public static midPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 12

    .line 92
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 93
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 94
    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 95
    iget-wide p0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr p0, v2

    .line 97
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 101
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 102
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 104
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    .line 105
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double v8, v8, p0

    .line 106
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    add-double/2addr p0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    add-double/2addr v4, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    add-double/2addr v10, v6

    mul-double v4, v4, v10

    mul-double v10, v8, v8

    add-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    add-double/2addr v0, v6

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    add-double/2addr v2, v0

    .line 109
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private saveAndFinish()V
    .locals 5

    .line 278
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->createFinalList()V

    .line 280
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 281
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->drawPlyline()V

    .line 282
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$5;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$5;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)V

    .line 304
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 305
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$6;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveUndoState()V
    .locals 6

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 537
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    .line 538
    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$UndoState;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$UndoState;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)V

    .line 539
    iget-object v4, v2, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iput-wide v4, v3, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$UndoState;->latitude:D

    .line 540
    iget-object v4, v2, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iput-wide v4, v3, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$UndoState;->longitude:D

    .line 541
    iget-boolean v2, v2, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->middle:Z

    iput-boolean v2, v3, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$UndoState;->middle:Z

    .line 542
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    iput-boolean v2, v3, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$UndoState;->first:Z

    .line 543
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 546
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mUndoBuffer:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setUpMap()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 242
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setMapToolbarEnabled(Z)V

    .line 243
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mbIsSateliteView:Z

    invoke-static {p0, v0, v1}, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->setMapType(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Z)V

    .line 244
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivityPermissionsDispatcher;->buildGoogleApiClientWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)V

    return-void
.end method

.method private setUpMapIfNeeded()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0903a5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$4;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$4;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)V

    .line 221
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    :cond_0
    return-void
.end method

.method private undo()V
    .locals 9

    .line 550
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mUndoBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 551
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mUndoBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 552
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mUndoBuffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 555
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mAddMarker:Z

    .line 556
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 557
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 558
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mbIsSateliteView:Z

    invoke-static {p0, v1, v3}, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->setMapTypeNoOSM(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Z)V

    .line 561
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$UndoState;

    .line 562
    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$UndoState;->latitude:D

    iget-wide v7, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$UndoState;->longitude:D

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    .line 563
    iget-boolean v4, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$UndoState;->first:Z

    if-eqz v4, :cond_0

    const/high16 v4, 0x41f00000    # 30.0f

    .line 564
    invoke-static {v4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 566
    :cond_0
    iget-boolean v4, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$UndoState;->middle:Z

    if-eqz v4, :cond_1

    const v4, 0x7f080234

    .line 567
    invoke-static {v4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 568
    :cond_1
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    .line 569
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    new-instance v5, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-boolean v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$UndoState;->middle:Z

    invoke-direct {v5, p0, v3, v1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;Lcom/google/android/gms/maps/model/Marker;Z)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 572
    :cond_2
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->drawPlyline()V

    :cond_3
    return-void
.end method


# virtual methods
.method declared-synchronized buildGoogleApiClient()V
    .locals 2

    monitor-enter p0

    .line 329
    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 330
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 331
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 332
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 334
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 5

    .line 579
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mFinalList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 580
    new-instance p1, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 581
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mFinalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    .line 582
    invoke-virtual {p1, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_0

    .line 584
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p1

    .line 586
    invoke-static {p1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 587
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void

    .line 589
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-interface {p1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$7;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$7;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)V

    .line 590
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 127
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbRestart:Z

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 133
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v2, 0x7f1203b4

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_1
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    .line 140
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/app/Activity;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v2

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 142
    const-string v2, "TerriotryId"

    if-eqz p1, :cond_2

    .line 143
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mTerritoryName:Ljava/lang/String;

    .line 144
    const-string v2, "AddMarker"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mAddMarker:Z

    .line 145
    const-string v2, "Positions"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mFinalList:Ljava/util/ArrayList;

    .line 146
    const-string v2, "Satelite"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mbIsSateliteView:Z

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mTerritoryName:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "TerriotryPoints"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mFinalList:Ljava/util/ArrayList;

    .line 156
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mFinalList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mFinalList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mFinalList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_4

    .line 157
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mAddMarker:Z

    :cond_4
    const p1, 0x7f09049b

    .line 160
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 161
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090649

    .line 170
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 171
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09012f

    .line 178
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 180
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$3;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f0c00ef

    .line 188
    const-string v0, "CreateMap2"

    invoke-static {p0, p1, v0}, Lcom/lostpixels/fieldservice/ui/OverlayHelper;->showOverLay(Landroid/content/Context;ILjava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0903a5

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 190
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f1201a6

    .line 258
    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 260
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .line 351
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mAddMarker:Z

    if-eqz v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->saveUndoState()V

    .line 353
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->addMarker(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 355
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->drawPlyline()V

    :cond_0
    return-void
.end method

.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 3

    .line 114
    const-string v0, "http.agent"

    const-string v1, "Ministry Assistant"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 116
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->setUpMap()V

    .line 118
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mFinalList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    .line 119
    invoke-direct {p0, v2}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->addMarker(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->drawPlyline()V

    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 5

    .line 380
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mAddMarker:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 381
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->indexOf(Lcom/google/android/gms/maps/model/Marker;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 382
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->saveUndoState()V

    .line 383
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->midPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 385
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v4, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v4}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    const v4, 0x7f080234

    invoke-static {v4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v0, v4, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 386
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    new-instance v4, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    invoke-direct {v4, p0, v0, v2}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;Lcom/google/android/gms/maps/model/Marker;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    invoke-direct {v3, p0, p1, v1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;Lcom/google/android/gms/maps/model/Marker;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->drawPlyline()V

    .line 391
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mAddMarker:Z

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 5

    .line 433
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->indexOf(Lcom/google/android/gms/maps/model/Marker;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 435
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 436
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-boolean v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->middle:Z

    if-nez v1, :cond_3

    if-lez v0, :cond_1

    .line 439
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    add-int/lit8 v3, v0, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->midPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 441
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    add-int/lit8 v3, v0, -0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->midPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 444
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto/16 :goto_0

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    add-int/lit8 v3, v0, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->midPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 447
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    add-int/2addr v0, v2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 448
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mAddMarker:Z

    if-nez v0, :cond_3

    .line 449
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->midPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 451
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0

    .line 456
    :cond_2
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 459
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->drawPlyline()V

    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 8

    .line 464
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->indexOf(Lcom/google/android/gms/maps/model/Marker;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 466
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 467
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-boolean v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->middle:Z

    if-eqz v1, :cond_1

    .line 469
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    if-nez v0, :cond_0

    const/high16 v3, 0x41f00000    # 30.0f

    .line 471
    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 472
    :cond_0
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    .line 473
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    new-instance v4, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v1, v5}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;Lcom/google/android/gms/maps/model/Marker;Z)V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 476
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->midPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 477
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v5, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v5, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const v5, 0x7f080234

    invoke-static {v5}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v1, v6, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    .line 478
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    new-instance v7, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    invoke-direct {v7, p0, v1, v2}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;Lcom/google/android/gms/maps/model/Marker;Z)V

    invoke-interface {v4, v3, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 480
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->midPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 481
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    invoke-static {v5}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    invoke-virtual {p1, v6, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 482
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    invoke-direct {v3, p0, p1, v2}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;Lcom/google/android/gms/maps/model/Marker;Z)V

    invoke-interface {v1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    if-lez v0, :cond_3

    .line 486
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_2

    .line 487
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    add-int/lit8 v3, v0, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->midPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 488
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 490
    :cond_2
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    add-int/lit8 v3, v0, -0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->midPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 491
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto/16 :goto_0

    .line 493
    :cond_3
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    add-int/lit8 v3, v0, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->midPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 494
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    add-int/2addr v0, v2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 495
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mAddMarker:Z

    if-nez v0, :cond_5

    .line 496
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->midPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 497
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 498
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0

    .line 503
    :cond_4
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 506
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->drawPlyline()V

    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 5

    .line 401
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->indexOf(Lcom/google/android/gms/maps/model/Marker;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 403
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 404
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-boolean v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->middle:Z

    if-nez v1, :cond_3

    if-lez v0, :cond_1

    .line 407
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    add-int/lit8 v3, v0, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->midPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 409
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    add-int/lit8 v3, v0, -0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->midPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 412
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto/16 :goto_0

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    add-int/lit8 v3, v0, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->midPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 415
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    add-int/2addr v0, v2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 416
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mAddMarker:Z

    if-nez v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->midPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 419
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0

    .line 424
    :cond_2
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mPositions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 427
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->saveUndoState()V

    .line 428
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->drawPlyline()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 273
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 267
    :cond_1
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->saveAndFinish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 649
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 651
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivityPermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;I[I)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 196
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onResume()V

    .line 197
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->setUpMapIfNeeded()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 339
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 341
    const-string v0, "TerriotryId"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mTerritoryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v0, "AddMarker"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mAddMarker:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 343
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->createFinalList()V

    .line 344
    const-string v0, "Positions"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mFinalList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 345
    const-string v0, "Satelite"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mbIsSateliteView:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method showDeniedForPosition()V
    .locals 2

    .line 642
    const-string v0, "Permission denied"

    const-string v1, "ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f120279

    .line 643
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method showRationaleForPosition(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 4

    .line 621
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12027c

    .line 623
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 624
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$9;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$9;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;Lpermissions/dispatcher/PermissionRequest;)V

    .line 625
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$8;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$8;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;Lpermissions/dispatcher/PermissionRequest;)V

    const p1, 0x7f12004b

    .line 630
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 635
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 636
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showSatelite(Z)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 251
    invoke-static {p0, v0, p1}, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->setMapType(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Z)V

    .line 252
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mbIsSateliteView:Z

    :cond_0
    return-void
.end method
