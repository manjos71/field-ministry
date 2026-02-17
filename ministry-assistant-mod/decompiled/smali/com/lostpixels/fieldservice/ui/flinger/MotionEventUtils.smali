.class public abstract Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils$WrappedStaticMotionEvent;
    }
.end annotation


# static fields
.field public static sMultiTouchApiAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    .line 36
    :try_start_0
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getPointerId"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    sput-boolean v3, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->sMultiTouchApiAvailable:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 39
    :catch_0
    sput-boolean v0, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->sMultiTouchApiAvailable:Z

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "I am not the greatest developer on the world"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 1

    .line 69
    sget-boolean v0, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->sMultiTouchApiAvailable:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils$WrappedStaticMotionEvent;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
    .locals 1

    .line 61
    sget-boolean v0, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->sMultiTouchApiAvailable:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils$WrappedStaticMotionEvent;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .locals 1

    .line 45
    sget-boolean v0, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->sMultiTouchApiAvailable:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils$WrappedStaticMotionEvent;->getX(Landroid/view/MotionEvent;I)F

    move-result p0

    return p0

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    return p0
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .locals 1

    .line 53
    sget-boolean v0, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils;->sMultiTouchApiAvailable:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/MotionEventUtils$WrappedStaticMotionEvent;->getY(Landroid/view/MotionEvent;I)F

    move-result p0

    return p0

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    return p0
.end method
