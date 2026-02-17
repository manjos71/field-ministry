.class public abstract Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final bgDrawableNormal:Landroid/graphics/drawable/Drawable;

.field private final bgDrawablePressed:Landroid/graphics/drawable/Drawable;

.field private final confirmClickRunnable:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private marker:Lcom/google/android/gms/maps/model/Marker;

.field private pressed:Z

.field private final view:Landroid/widget/ImageView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmarker(Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;)Lcom/google/android/gms/maps/model/Marker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->marker:Lcom/google/android/gms/maps/model/Marker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetview(Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->view:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mendPress(Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->endPress()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->handler:Landroid/os/Handler;

    .line 22
    new-instance v0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener$1;-><init>(Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->confirmClickRunnable:Ljava/lang/Runnable;

    .line 31
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->view:Landroid/widget/ImageView;

    .line 32
    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->bgDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 33
    iput-object p3, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->bgDrawablePressed:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->pressed:Z

    return-void
.end method

.method private endPress()Z
    .locals 2

    .line 83
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->pressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 84
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->pressed:Z

    .line 85
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->confirmClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->bgDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->marker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private startPress()V
    .locals 2

    .line 73
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->pressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->pressed:Z

    .line 75
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->confirmClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->bgDrawablePressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->marker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract onClickConfirmed(Landroid/view/View;Lcom/google/android/gms/maps/model/Marker;)V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 43
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_3

    .line 44
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    .line 45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->endPress()Z

    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->confirmClickRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 47
    :cond_2
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->startPress()V

    goto :goto_0

    .line 67
    :cond_3
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->endPress()Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setMarker(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->marker:Lcom/google/android/gms/maps/model/Marker;

    return-void
.end method
