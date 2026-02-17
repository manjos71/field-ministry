.class public Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# instance fields
.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field mMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

.field mbIsSatelite:Z

.field private person:Lcom/lostpixels/fieldservice/internal/ministry/Person;


# direct methods
.method public static synthetic $r8$lambda$-0ijXUGH8cX9cphXjFq-z7HyCUQ(Lpermissions/dispatcher/PermissionRequest;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 222
    invoke-interface {p0}, Lpermissions/dispatcher/PermissionRequest;->proceed()V

    return-void
.end method

.method public static synthetic $r8$lambda$8GatCJpgFQ7J9F1lag9tiWgR8xM(Lpermissions/dispatcher/PermissionRequest;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 223
    invoke-interface {p0}, Lpermissions/dispatcher/PermissionRequest;->cancel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmMap(Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0c00f8

    .line 57
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected getHouseholderImage(Lcom/lostpixels/fieldservice/internal/ministry/Person;)I
    .locals 2

    const v0, 0x7f080326

    if-eqz p1, :cond_4

    .line 151
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f080333

    return p1

    :cond_1
    const p1, 0x7f08031b

    return p1

    :cond_2
    return v0

    :cond_3
    const p1, 0x7f080337

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 84
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbRestart:Z

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090440

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->mMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 93
    const-string v1, "Person"

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    :cond_2
    :goto_0
    const v0, 0x7f09012f

    .line 98
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v1, 0x7f090133

    .line 99
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz p1, :cond_3

    .line 101
    const-string v2, "ShowSateliteView"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->mbIsSatelite:Z

    .line 103
    :cond_3
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$1;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$2;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;)V

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 132
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 135
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 133
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    :goto_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->mMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 245
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->clearProvider()V

    .line 246
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onDestroy()V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2

    .line 63
    const-string v0, "http.agent"

    const-string v1, "Ministry Assistant"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 65
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 66
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 67
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->mbIsSatelite:Z

    invoke-static {p0, p1, v0}, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->setMapType(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Z)V

    .line 69
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    new-instance p1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {p1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 72
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 74
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->getHouseholderImage(Lcom/lostpixels/fieldservice/internal/ministry/Person;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 75
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 77
    :cond_0
    new-instance p1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void
.end method

.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 195
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "houseHolder"

    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 200
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 201
    const-string v0, "Person"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 202
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 208
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 213
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 238
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 240
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialogPermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;I[I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 174
    const-string v0, "Person"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 175
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 176
    const-string v0, "ShowSateliteView"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->mbIsSatelite:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method setMapType()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 143
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->mbIsSatelite:Z

    invoke-static {p0, v0, v1}, Lcom/lostpixels/fieldservice/utils/map/GoogleMapUtils;->setMapType(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Z)V

    :cond_0
    return-void
.end method

.method showDeniedForPosition()V
    .locals 2

    .line 231
    const-string v0, "Permission denied"

    const-string v1, "ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f120279

    .line 232
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

    .line 218
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12027c

    .line 220
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 221
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$$ExternalSyntheticLambda0;-><init>(Lpermissions/dispatcher/PermissionRequest;)V

    .line 222
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$$ExternalSyntheticLambda1;-><init>(Lpermissions/dispatcher/PermissionRequest;)V

    const p1, 0x7f12004b

    .line 223
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 224
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
