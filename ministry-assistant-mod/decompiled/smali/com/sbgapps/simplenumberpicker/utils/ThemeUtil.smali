.class public abstract Lcom/sbgapps/simplenumberpicker/utils/ThemeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getThemeAccentColor(Landroid/content/Context;)I
    .locals 3

    .line 56
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    const v2, 0x1010435

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 58
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method public static getThemePrimaryColor(Landroid/content/Context;)I
    .locals 3

    .line 43
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    const v2, 0x1010433

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 45
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method public static makeSelector(Landroid/content/Context;II)Landroid/graphics/drawable/StateListDrawable;
    .locals 3

    .line 62
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/16 v1, 0x32

    .line 64
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableContainer;->setExitFadeDuration(I)V

    .line 66
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 67
    invoke-static {v1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x101009e

    .line 68
    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const p1, 0x40ffffff    # 7.9999995f

    and-int/2addr p1, p2

    .line 70
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    const p1, -0x101009e

    .line 71
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
