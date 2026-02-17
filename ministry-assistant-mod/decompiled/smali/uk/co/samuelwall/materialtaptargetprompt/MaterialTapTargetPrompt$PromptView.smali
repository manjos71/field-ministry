.class Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PromptView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$AccessibilityDelegate;,
        Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;
    }
.end annotation


# instance fields
.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mClipBounds:Landroid/graphics/Rect;

.field mClipToBounds:Z

.field mIconDrawable:Landroid/graphics/drawable/Drawable;

.field mIconDrawableLeft:F

.field mIconDrawableTop:F

.field mPrompt:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;

.field mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

.field mPromptTouchedListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;

.field mTargetRenderView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$CeCFjyVGXbZMbTuwPbn94MdzlzE(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;Landroid/view/View;)V
    .locals 0

    .line 934
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    .line 934
    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getTargetView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 937
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 941
    :cond_0
    iget-object p0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPrompt:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;

    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->finish()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 748
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 734
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipBounds:Landroid/graphics/Rect;

    .line 749
    sget v0, Luk/co/samuelwall/materialtaptargetprompt/R$id;->material_target_prompt_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    const/4 v0, 0x1

    .line 750
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 751
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 763
    new-instance v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$AccessibilityDelegate;

    invoke-direct {v0, p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$AccessibilityDelegate;-><init>(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 764
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 766
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 767
    invoke-direct {p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->setupAccessibilityClickListener()V

    :cond_0
    return-void
.end method

.method private setupAccessibilityClickListener()V
    .locals 1

    const/4 v0, 0x1

    .line 930
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 931
    new-instance v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$$ExternalSyntheticLambda0;-><init>(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 883
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getBackButtonDismissEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 884
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 886
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 889
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 890
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 892
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v2

    .line 895
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 896
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 898
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptTouchedListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;

    if-eqz v0, :cond_1

    .line 900
    invoke-interface {v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;->onBackButtonPressed()V

    .line 902
    :cond_1
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getAutoDismiss()Z

    move-result v0

    if-nez v0, :cond_3

    .line 903
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v2

    .line 908
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 921
    const-class v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 914
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 915
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPrompt:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;->cleanUpAnimation()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 782
    iget-boolean v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipToBounds:Z

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 788
    :cond_0
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptFocal()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->getPath()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 791
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 792
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 795
    :cond_1
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptBackground()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;

    move-result-object v1

    invoke-virtual {v1, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_2

    .line 799
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 803
    :cond_2
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptFocal()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    move-result-object v0

    invoke-virtual {v0, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->draw(Landroid/graphics/Canvas;)V

    .line 810
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 812
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableLeft:F

    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableTop:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 813
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 814
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableLeft:F

    neg-float v0, v0

    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableTop:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 816
    :cond_3
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mTargetRenderView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 818
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableLeft:F

    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableTop:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 819
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mTargetRenderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 820
    iget v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableLeft:F

    neg-float v0, v0

    iget v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mIconDrawableTop:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 824
    :cond_4
    :goto_0
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptText()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;

    move-result-object v0

    invoke-virtual {v0, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptText;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 829
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 830
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 839
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 833
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 836
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 842
    :goto_0
    invoke-virtual {p0, p1}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 844
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 775
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 776
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 850
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 851
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 853
    iget-boolean v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipToBounds:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mClipBounds:Landroid/graphics/Rect;

    float-to-int v2, v0

    float-to-int v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    .line 854
    invoke-virtual {v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptBackground()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptBackground;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 856
    iget-object v2, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v2}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPromptFocal()Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 859
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getCaptureTouchEventOnFocal()Z

    move-result p1

    .line 860
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptTouchedListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;

    if-eqz v0, :cond_2

    .line 862
    invoke-interface {v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;->onFocalPressed()V

    :cond_2
    return p1

    :cond_3
    if-nez v1, :cond_4

    .line 870
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getCaptureTouchEventOutsidePrompt()Z

    move-result v1

    .line 872
    :cond_4
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptTouchedListener:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;

    if-eqz p1, :cond_5

    .line 874
    invoke-interface {p1}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$PromptTouchedListener;->onNonFocalPressed()V

    :cond_5
    return v1
.end method
