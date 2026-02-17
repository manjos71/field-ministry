.class public interface abstract Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAddVisitListener"
.end annotation


# virtual methods
.method public abstract getBottomHeightOffset()I
.end method

.method public abstract getParentLayout()Landroid/view/View;
.end method

.method public abstract isEditMode()Z
.end method

.method public abstract onShouldAddAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)Z
.end method

.method public abstract onShouldAddStreet(Lcom/lostpixels/fieldservice/internal/ministry/Street;)Z
.end method

.method public abstract onShouldAddVisit(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)Z
.end method

.method public abstract onShouldCreateVisit(Lcom/google/android/gms/maps/model/LatLng;)Z
.end method

.method public abstract onShouldTagVisit(Lcom/google/android/gms/maps/model/LatLng;)Z
.end method
