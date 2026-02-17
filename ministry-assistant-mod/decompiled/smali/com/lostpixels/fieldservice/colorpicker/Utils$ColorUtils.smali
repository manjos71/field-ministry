.class public abstract Lcom/lostpixels/fieldservice/colorpicker/Utils$ColorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static colorChoice(Landroid/content/Context;)[I
    .locals 3

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/lostpixels/fieldservice/colorpicker/R$array;->default_color_choice_values:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 48
    array-length v0, p0

    if-lez v0, :cond_1

    .line 49
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 50
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 51
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
