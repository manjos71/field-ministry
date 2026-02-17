.class public Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView_v14;
.super Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;
.source "SourceFile"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 45
    :cond_0
    const-string p2, "accessibility"

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    :goto_0
    iput-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView_v14;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 51
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView_v14;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 59
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 65
    :goto_0
    invoke-virtual {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 69
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
