.class public Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;
.super Lcom/google/android/gms/maps/SupportMapFragment;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;,
        Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnMapFragmentListener;,
        Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnAddPersonListener;
    }
.end annotation


# instance fields
.field private addHandler:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnAddPersonListener;

.field dateOlder:Ljava/util/Date;

.field dateOneMonth:Ljava/util/Date;

.field dateTwoMonths:Ljava/util/Date;

.field dateTwoWeeks:Ljava/util/Date;

.field private googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private listener:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnMapFragmentListener;

.field private mInfoButtonListener:Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;

.field private mLastMarker:Lcom/google/android/gms/maps/model/Marker;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mMapFrame:Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;

.field private mPersonBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final markerMap:Ljava/util/HashMap;

.field private mbIsSateliteView:Z

.field private miOffsetX:I

.field private miOffsetY:I

.field private mimgMoreButton:Landroid/widget/ImageView;

.field realm:Lio/realm/Realm;


# direct methods
.method public static synthetic $r8$lambda$_FNAhbs7QU8Mi9GgYXrI9y5Rc94(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;Lcom/google/android/gms/maps/model/LatLng;Lcom/lostpixels/fieldservice/ui/QuickAction;II)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x2

    if-ne p4, p2, :cond_0

    .line 452
    :try_start_0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnAddPersonListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnAddPersonListener;->onAddPerson(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void

    :cond_0
    const/4 p2, 0x3

    if-ne p4, p2, :cond_1

    .line 454
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnAddPersonListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnAddPersonListener;->onTagPerson(Lcom/google/android/gms/maps/model/LatLng;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$bg2M8zW0uU53x8_uGaY0F3nRUu4(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 424
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mPersonBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    const/16 v1, 0x1e

    invoke-static {p0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetgoogleApiClient(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnMapFragmentListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->listener:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnMapFragmentListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInfoButtonListener(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mInfoButtonListener:Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMap(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMapFrame(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMapFrame:Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmimgMoreButton(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mimgMoreButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmInfoButtonListener(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mInfoButtonListener:Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmimgMoreButton(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;Landroid/widget/ImageView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mimgMoreButton:Landroid/widget/ImageView;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMarkerData(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;Lcom/google/android/gms/maps/model/Marker;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->getMarkerData(Lcom/google/android/gms/maps/model/Marker;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 112
    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportMapFragment;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->markerMap:Ljava/util/HashMap;

    .line 113
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMapFrame:Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;

    return-void
.end method

.method private createMapList()V
    .locals 8

    .line 466
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 469
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mbIsSateliteView:Z

    invoke-static {v0, v1, v2}, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->setMapType(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Z)V

    .line 471
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getPersonList()Ljava/util/List;

    move-result-object v0

    .line 473
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getColorBy()Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    move-result-object v1

    .line 474
    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 477
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    .line 478
    iget-object v5, v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v5}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 480
    :cond_2
    iget-object v5, v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 482
    iget-object v3, v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 484
    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 485
    iget-object v5, v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    const/4 v5, 0x1

    .line 486
    invoke-virtual {v3, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 487
    iget-object v6, v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p0, v6, v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->getMarker(Lcom/lostpixels/fieldservice/internal/ministry/Person;Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;)I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 488
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    .line 489
    iget-wide v6, v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->key:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->setMarkerData(Lcom/google/android/gms/maps/model/Marker;Ljava/lang/Long;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 494
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mPersonBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 496
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mPersonBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-void
.end method

.method private getMarkerData(Lcom/google/android/gms/maps/model/Marker;)Ljava/lang/Long;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->markerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method private static getPixelsFromDp(Landroid/content/Context;F)I
    .locals 0

    .line 117
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

.method private saveLastPosition()V
    .locals 6

    .line 510
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 512
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    double-to-float v0, v0

    .line 513
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    double-to-float v1, v1

    .line 514
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    .line 516
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "RVMapPos"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 517
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 518
    const-string v4, "lat"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 519
    const-string v0, "lng"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 520
    const-string v0, "zoom"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 521
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 523
    const-string v1, "saveLastPosition"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setFromSavedPos()Z
    .locals 9

    .line 536
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "RVMapPos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 537
    const-string v1, "lat"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "lng"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "zoom"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 539
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 540
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 541
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 543
    new-instance v2, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    float-to-double v5, v1

    float-to-double v7, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 544
    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 545
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_1

    .line 546
    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method private setMarkerData(Lcom/google/android/gms/maps/model/Marker;Ljava/lang/Long;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->markerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private showQuickAction(IILcom/google/android/gms/maps/model/LatLng;)V
    .locals 5

    .line 441
    new-instance v0, Lcom/lostpixels/fieldservice/ui/ActionItem;

    const v1, 0x7f120354

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08008c

    .line 442
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, Lcom/lostpixels/fieldservice/ui/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 443
    new-instance v1, Lcom/lostpixels/fieldservice/ui/ActionItem;

    const v2, 0x7f120523

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080350

    .line 444
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v1, v4, v2, v3}, Lcom/lostpixels/fieldservice/ui/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 446
    new-instance v2, Lcom/lostpixels/fieldservice/ui/QuickAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/lostpixels/fieldservice/ui/QuickAction;-><init>(Landroid/content/Context;I)V

    .line 447
    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/ui/QuickAction;->addActionItem(Lcom/lostpixels/fieldservice/ui/ActionItem;)V

    .line 448
    invoke-virtual {v2, v1}, Lcom/lostpixels/fieldservice/ui/QuickAction;->addActionItem(Lcom/lostpixels/fieldservice/ui/ActionItem;)V

    .line 449
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$$ExternalSyntheticLambda1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/ui/QuickAction;->setOnActionItemClickListener(Lcom/lostpixels/fieldservice/ui/QuickAction$OnActionItemClickListener;)V

    const/4 p3, 0x5

    .line 460
    invoke-virtual {v2, p3}, Lcom/lostpixels/fieldservice/ui/QuickAction;->setAnimStyle(I)V

    .line 461
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroidx/appcompat/app/ActionBar;->getHeight()I

    move-result p3

    iget v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->miOffsetY:I

    add-int/2addr p3, v0

    .line 462
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMapFrame:Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->miOffsetX:I

    add-int/2addr p1, v1

    add-int/2addr p2, p3

    invoke-virtual {v2, v0, p1, p2}, Lcom/lostpixels/fieldservice/ui/QuickAction;->show(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public followMyLocation(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 200
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$2;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)V

    .line 201
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)V

    .line 269
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_0
    if-eqz p1, :cond_1

    .line 279
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 281
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 283
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 286
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 289
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 290
    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 296
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_4

    .line 297
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    :cond_4
    return-void
.end method

.method public getInternalMap()Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method public getMarker(Lcom/lostpixels/fieldservice/internal/ministry/Person;Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;)I
    .locals 22

    move-object/from16 v0, p0

    .line 554
    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->eColorByType:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    const v6, 0x7f080328

    const v7, 0x7f080327

    const v8, 0x7f080329

    const v9, 0x7f08031b

    const v10, 0x7f08031d

    const v11, 0x7f08031c

    const v12, 0x7f08031e

    const v13, 0x7f080333

    const v14, 0x7f080335

    const v15, 0x7f080334

    const v16, 0x7f080336

    const v17, 0x7f08033a

    const v18, 0x7f080337

    const/4 v2, 0x4

    const v19, 0x7f080339

    const/4 v3, 0x3

    const v20, 0x7f080338

    const/4 v4, 0x1

    move-object/from16 v5, p2

    const v21, 0x7f080326

    if-ne v5, v1, :cond_f

    .line 555
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result v1

    if-eq v1, v4, :cond_b

    if-eq v1, v3, :cond_7

    if-eq v1, v2, :cond_3

    .line 587
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v1

    if-eqz v1, :cond_0

    return v17

    .line 589
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v1

    if-eqz v1, :cond_1

    return v20

    .line 591
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v1

    if-eqz v1, :cond_2

    return v19

    :cond_2
    return v18

    .line 567
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v1

    if-eqz v1, :cond_4

    return v16

    .line 569
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v1

    if-eqz v1, :cond_5

    return v15

    .line 571
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v1

    if-eqz v1, :cond_6

    return v14

    :cond_6
    return v13

    .line 577
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v1

    if-eqz v1, :cond_8

    return v12

    .line 579
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v1

    if-eqz v1, :cond_9

    return v11

    .line 581
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v1

    if-eqz v1, :cond_a

    return v10

    :cond_a
    return v9

    .line 557
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v1

    if-eqz v1, :cond_c

    return v8

    .line 559
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v1

    if-eqz v1, :cond_d

    return v7

    .line 561
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v1

    if-eqz v1, :cond_e

    return v6

    :cond_e
    return v21

    .line 599
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 600
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v1

    goto :goto_0

    .line 602
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getLastUpdate()Ljava/util/Date;

    move-result-object v1

    .line 604
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result v5

    if-eq v5, v4, :cond_1c

    if-eq v5, v3, :cond_18

    if-eq v5, v2, :cond_14

    .line 636
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->dateTwoWeeks:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v20

    .line 638
    :cond_11
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->dateOneMonth:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_12

    return v18

    .line 640
    :cond_12
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->dateTwoMonths:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v17

    :cond_13
    return v19

    .line 616
    :cond_14
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->dateTwoWeeks:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_15

    return v15

    .line 618
    :cond_15
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->dateOneMonth:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_16

    return v13

    .line 620
    :cond_16
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->dateTwoMonths:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_17

    return v16

    :cond_17
    return v14

    .line 626
    :cond_18
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->dateTwoWeeks:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_19

    return v11

    .line 628
    :cond_19
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->dateOneMonth:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return v9

    .line 630
    :cond_1a
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->dateTwoMonths:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1b

    return v12

    :cond_1b
    return v10

    .line 606
    :cond_1c
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->dateTwoWeeks:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return v7

    .line 608
    :cond_1d
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->dateOneMonth:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return v21

    .line 610
    :cond_1e
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->dateTwoMonths:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return v8

    :cond_1f
    return v6
.end method

.method public hideInfoWindow()V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mLastMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mLastMarker:Lcom/google/android/gms/maps/model/Marker;

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

    .line 354
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 355
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->realm:Lio/realm/Realm;

    .line 356
    instance-of v0, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnMapFragmentListener;

    if-eqz v0, :cond_1

    .line 357
    move-object v0, p1

    check-cast v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnMapFragmentListener;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->listener:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnMapFragmentListener;

    .line 362
    instance-of v0, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnAddPersonListener;

    if-eqz v0, :cond_0

    .line 363
    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnAddPersonListener;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnAddPersonListener;

    return-void

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implemenet OnAddPersonListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implemenet OnMapFragmentListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 312
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    const-string v1, "Create ReturnVisitsMap "

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :catch_0
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 318
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 319
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 320
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    const/16 v5, -0xe

    .line 321
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    const/4 v4, -0x1

    const/4 v5, 0x2

    .line 322
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    const/4 v6, -0x2

    .line 323
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    const/4 v6, -0x3

    .line 324
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 326
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->dateTwoWeeks:Ljava/util/Date;

    .line 327
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->dateOneMonth:Ljava/util/Date;

    .line 328
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->dateTwoMonths:Ljava/util/Date;

    .line 329
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->dateOlder:Ljava/util/Date;

    .line 331
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/maps/SupportMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 332
    invoke-virtual {p0, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    if-eqz p3, :cond_0

    .line 335
    const-string v1, "ShowSateliteView"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mbIsSateliteView:Z

    .line 337
    :cond_0
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 338
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 339
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 345
    :catch_1
    :try_start_2
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p3

    const-string v0, "Exception ReturnVisitsMap "

    invoke-virtual {p3, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const p3, 0x7f0c0087

    const/4 v0, 0x0

    .line 348
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 371
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->saveLastPosition()V

    .line 372
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 373
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->listener:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnMapFragmentListener;

    .line 374
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->addHandler:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnAddPersonListener;

    .line 375
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 377
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->clearProvider()V

    return-void
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 4

    .line 502
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->getMarkerData(Lcom/google/android/gms/maps/model/Marker;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    .line 505
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->listener:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnMapFragmentListener;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnMapFragmentListener;

    invoke-interface {v0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnMapFragmentListener;->onPersonClicked(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    :cond_0
    return-void
.end method

.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .line 688
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getAddressFromLatLong(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$GetAddressListener;)V

    .line 689
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    .line 690
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v0

    .line 692
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->showQuickAction(IILcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->realm:Lio/realm/Realm;

    .line 150
    :cond_0
    const-string v0, "http.agent"

    const-string v1, "Ministry Assistant"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mbIsSateliteView:Z

    invoke-static {p1, v0, v1}, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->setMapType(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Z)V

    .line 154
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 155
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    .line 156
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 157
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 158
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 159
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 161
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMapFrame:Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;

    if-eqz p1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x426c0000    # 59.0f

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->getPixelsFromDp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;->init(Lcom/google/android/gms/maps/GoogleMap;I)V

    .line 165
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->listener:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnMapFragmentListener;

    if-eqz p1, :cond_2

    .line 166
    invoke-interface {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnMapFragmentListener;->onMapInitDone()V

    :cond_2
    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mLastMarker:Lcom/google/android/gms/maps/model/Marker;

    const/4 p1, 0x0

    return p1
.end method

.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 5

    .line 667
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->getMarkerData(Lcom/google/android/gms/maps/model/Marker;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    .line 670
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 671
    invoke-static {v0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 672
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    invoke-static {v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    .line 680
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->realm:Lio/realm/Realm;

    const-class v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "houseHolder"

    invoke-virtual {v1, v2, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz v0, :cond_1

    .line 682
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    :cond_1
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 530
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/SupportMapFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 531
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->saveLastPosition()V

    .line 532
    const-string v0, "ShowSateliteView"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mbIsSateliteView:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 174
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/maps/SupportMapFragment;->onStop()V

    return-void
.end method

.method public setDefaultLocation()V
    .locals 3

    .line 420
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->setFromSavedPos()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mPersonBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 424
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$$ExternalSyntheticLambda0;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    goto :goto_0

    .line 426
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getLastKnownLocation(Landroid/content/Context;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 429
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 430
    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_2
    return-void
.end method

.method public setMapLayoutWrapper(Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMapFrame:Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;

    return-void
.end method

.method public setOffsetY(I)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->miOffsetY:I

    return-void
.end method

.method public showOnMap(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 7

    .line 402
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->markerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 403
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 404
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v2

    .line 405
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isSameID(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 410
    :goto_0
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p1

    .line 411
    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 412
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    if-eqz v0, :cond_2

    .line 414
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    :cond_2
    return-void
.end method

.method public showSatelite(Z)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0, v1, p1}, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->setMapType(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Z)V

    .line 304
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mbIsSateliteView:Z

    :cond_0
    return-void
.end method

.method public updateInfoWindow()V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mLastMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mLastMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    .line 383
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->mLastMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    :cond_0
    return-void
.end method

.method public updateMap()V
    .locals 0

    .line 436
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->createMapList()V

    return-void
.end method
