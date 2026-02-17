.class public Lcom/lostpixels/fieldservice/ui/DelegatingRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private mEnlargedView:Landroid/view/View;

.field private mExtendedBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 38
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x40800000    # 4.0f

    mul-float p2, p2, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 43
    iget-object p3, p1, Lcom/lostpixels/fieldservice/ui/DelegatingRelativeLayout;->mEnlargedView:Landroid/view/View;

    if-eqz p3, :cond_0

    .line 44
    new-instance p3, Landroid/graphics/Rect;

    iget-object p4, p1, Lcom/lostpixels/fieldservice/ui/DelegatingRelativeLayout;->mEnlargedView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    mul-int/lit8 p4, p4, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p5

    const/4 v0, 0x0

    invoke-direct {p3, v0, v0, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 45
    iget p4, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p4, p2

    iput p4, p3, Landroid/graphics/Rect;->right:I

    .line 46
    new-instance p2, Landroid/view/TouchDelegate;

    iget-object p4, p1, Lcom/lostpixels/fieldservice/ui/DelegatingRelativeLayout;->mEnlargedView:Landroid/view/View;

    invoke-direct {p2, p3, p4}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 47
    iput-object p3, p1, Lcom/lostpixels/fieldservice/ui/DelegatingRelativeLayout;->mExtendedBounds:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public setEnlargedView(Landroid/view/View;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/DelegatingRelativeLayout;->mEnlargedView:Landroid/view/View;

    return-void
.end method
