.class public Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private bottomOffsetPixels:I

.field private infoWindow:Landroid/view/View;

.field private map:Lcom/google/android/gms/maps/GoogleMap;

.field private marker:Lcom/google/android/gms/maps/model/Marker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 72
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;->marker:Lcom/google/android/gms/maps/model/Marker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;->infoWindow:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v0

    .line 78
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 79
    iget v3, v0, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;->infoWindow:Landroid/view/View;

    .line 80
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;->infoWindow:Landroid/view/View;

    .line 81
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;->bottomOffsetPixels:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    .line 79
    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 84
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;->infoWindow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 85
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 89
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public init(Lcom/google/android/gms/maps/GoogleMap;I)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;->map:Lcom/google/android/gms/maps/GoogleMap;

    .line 56
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;->bottomOffsetPixels:I

    return-void
.end method

.method public setMarkerWithInfoWindow(Lcom/google/android/gms/maps/model/Marker;Landroid/view/View;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;->marker:Lcom/google/android/gms/maps/model/Marker;

    .line 65
    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;->infoWindow:Landroid/view/View;

    return-void
.end method
