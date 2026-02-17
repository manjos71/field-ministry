.class public Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "SourceFile"


# instance fields
.field private mDelegateTargeted:Z

.field private final mScrap:Landroid/graphics/Rect;

.field private final mSource:Landroid/view/View;

.field private final mSourceFraction:Landroid/graphics/RectF;

.field private final mSourceFull:Landroid/graphics/Rect;

.field private final mSourcePartial:Landroid/graphics/Rect;

.field private final mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 2

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mScrap:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mSourceFull:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mSourcePartial:Landroid/graphics/Rect;

    .line 63
    iput-object p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mSource:Landroid/view/View;

    .line 64
    iput-object p2, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mTarget:Landroid/view/View;

    .line 65
    iput-object p3, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mSourceFraction:Landroid/graphics/RectF;

    return-void
.end method

.method public static setupDelegate(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 1

    .line 81
    new-instance v0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;

    invoke-direct {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;-><init>(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method private updateSourcePartial()V
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mSource:Landroid/view/View;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mScrap:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 90
    iget-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mScrap:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mSourceFull:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mSourceFull:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mScrap:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 94
    iget-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mSourceFull:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mSourceFull:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 97
    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mSourcePartial:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mSourceFraction:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    mul-float v4, v4, v0

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 98
    iget v4, v3, Landroid/graphics/RectF;->top:F

    int-to-float v1, v1

    mul-float v4, v4, v1

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 99
    iget v4, v3, Landroid/graphics/RectF;->right:F

    mul-float v4, v4, v0

    float-to-int v0, v4

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 100
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 106
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->updateSourcePartial()V

    .line 114
    iget-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mSourcePartial:Landroid/graphics/Rect;

    .line 115
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mTarget:Landroid/view/View;

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_1

    const/4 v7, 0x2

    if-eq v4, v7, :cond_1

    const/4 v0, 0x3

    if-eq v4, v0, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mDelegateTargeted:Z

    .line 142
    iput-boolean v5, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mDelegateTargeted:Z

    move v6, v0

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    .line 133
    :cond_1
    iget-boolean v4, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mDelegateTargeted:Z

    if-eqz v4, :cond_2

    .line 135
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_2

    move v6, v4

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move v6, v4

    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    iput-boolean v6, p0, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->mDelegateTargeted:Z

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v0, 0x1

    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v0, :cond_5

    .line 148
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_3

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    .line 150
    invoke-virtual {p1, v0, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 152
    :goto_3
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_6
    return v5
.end method
