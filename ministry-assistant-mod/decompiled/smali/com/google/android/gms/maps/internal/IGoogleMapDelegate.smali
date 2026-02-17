.class public interface abstract Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/internal/maps/zzad;
.end method

.method public abstract addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/internal/maps/zzaj;
.end method

.method public abstract addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/internal/maps/zzam;
.end method

.method public abstract animateCamera(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;
.end method

.method public abstract getProjection()Lcom/google/android/gms/maps/internal/IProjectionDelegate;
.end method

.method public abstract getUiSettings()Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;
.end method

.method public abstract moveCamera(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
.end method

.method public abstract resetMinMaxZoomPreference()V
.end method

.method public abstract setInfoWindowAdapter(Lcom/google/android/gms/maps/internal/zzi;)V
.end method

.method public abstract setMapType(I)V
.end method

.method public abstract setMaxZoomPreference(F)V
.end method

.method public abstract setMyLocationEnabled(Z)V
.end method

.method public abstract setOnInfoWindowClickListener(Lcom/google/android/gms/maps/internal/zzad;)V
.end method

.method public abstract setOnMapClickListener(Lcom/google/android/gms/maps/internal/zzan;)V
.end method

.method public abstract setOnMapLoadedCallback(Lcom/google/android/gms/maps/internal/zzap;)V
.end method

.method public abstract setOnMapLongClickListener(Lcom/google/android/gms/maps/internal/zzar;)V
.end method

.method public abstract setOnMarkerClickListener(Lcom/google/android/gms/maps/internal/zzav;)V
.end method

.method public abstract setOnMarkerDragListener(Lcom/google/android/gms/maps/internal/zzax;)V
.end method

.method public abstract snapshot(Lcom/google/android/gms/maps/internal/zzbw;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
.end method
