.class public abstract Lcom/lostpixels/fieldservice/ui/PopupWindows;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mBackground:Landroid/graphics/drawable/Drawable;

.field protected final mContext:Landroid/content/Context;

.field protected mRootView:Landroid/view/View;

.field protected final mWindow:Landroid/widget/PopupWindow;

.field protected final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 36
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    .line 39
    new-instance v1, Lcom/lostpixels/fieldservice/ui/PopupWindows$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/ui/PopupWindows$1;-><init>(Lcom/lostpixels/fieldservice/ui/PopupWindows;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 56
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method protected onShow()V
    .locals 0

    return-void
.end method

.method protected preShow()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/PopupWindows;->onShow()V

    .line 80
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 86
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 87
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 88
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 89
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 91
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setContentView was not called with a view to display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 109
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mRootView:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method
