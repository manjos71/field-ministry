.class public abstract Lgroup/pals/android/lib/ui/lockpattern/util/UI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static adjustDialogSizeForLargeScreens(Landroid/view/Window;)V
    .locals 5

    .line 135
    invoke-virtual {p0}, Landroid/view/Window;->isFloating()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->getCurrent(Landroid/content/Context;)Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    move-result-object v0

    .line 140
    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/util/UI$1;->$SwitchMap$group$pals$android$lib$ui$lockpattern$util$UI$ScreenSize:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 150
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    int-to-float v3, v3

    if-eqz v2, :cond_3

    .line 158
    iget v4, v0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->fixedWidthMinor:F

    goto :goto_2

    .line 159
    :cond_3
    iget v4, v0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->fixedWidthMajor:F

    :goto_2
    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-float v1, v1

    if-eqz v2, :cond_4

    .line 160
    iget v0, v0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->fixedHeightMajor:F

    goto :goto_3

    .line 161
    :cond_4
    iget v0, v0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->fixedHeightMinor:F

    :goto_3
    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 166
    invoke-virtual {p0, v3, v0}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public static resolveAttribute(Landroid/content/Context;I)I
    .locals 2

    .line 181
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 183
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
