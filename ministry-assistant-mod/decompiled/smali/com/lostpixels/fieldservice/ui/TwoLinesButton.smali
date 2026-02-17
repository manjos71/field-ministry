.class public Lcom/lostpixels/fieldservice/ui/TwoLinesButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/ui/TwoLinesButton$SavedState;
    }
.end annotation


# instance fields
.field private caption:Ljava/lang/String;

.field mBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->mBounds:Landroid/graphics/Rect;

    .line 24
    const-string p1, ""

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->caption:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 41
    invoke-super {p0, p1}, Landroid/widget/Button;->draw(Landroid/graphics/Canvas;)V

    .line 42
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 46
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->caption:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 48
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v9, 0x2

    .line 52
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    const-string v10, "\n"

    if-ge v4, v5, :cond_1

    if-lez v4, :cond_0

    .line 54
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_0
    iget-object v5, p0, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->caption:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v6

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 60
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_2
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v3, v1, 0x2

    .line 68
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->caption:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1, v8, v8, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 71
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->caption:Ljava/lang/String;

    move-object v4, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v2

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->drawMultilineText(Ljava/lang/String;IILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 72
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_3
    move-object v5, p1

    .line 74
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v3

    invoke-virtual {v5, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    invoke-virtual {v0, v5}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 77
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method drawMultilineText(Ljava/lang/String;IILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    .line 88
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->mBounds:Landroid/graphics/Rect;

    const-string v1, "Ig"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p4, v1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 92
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    float-to-double v0, v0

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double v0, v0, v4

    double-to-int v0, v0

    const/4 v1, 0x0

    .line 94
    :goto_0
    array-length v4, p1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 95
    aget-object v4, p1, v2

    int-to-float v5, p2

    add-int v6, p3, v1

    iget-object v7, p0, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p5, v4, v5, v6, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 110
    instance-of v0, p1, Lcom/lostpixels/fieldservice/ui/TwoLinesButton$SavedState;

    if-nez v0, :cond_0

    .line 111
    invoke-super {p0, p1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 115
    :cond_0
    check-cast p1, Lcom/lostpixels/fieldservice/ui/TwoLinesButton$SavedState;

    .line 116
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 117
    iget-object p1, p1, Lcom/lostpixels/fieldservice/ui/TwoLinesButton$SavedState;->stateToSave:Ljava/lang/String;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->caption:Ljava/lang/String;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 102
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/lostpixels/fieldservice/ui/TwoLinesButton$SavedState;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/ui/TwoLinesButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 104
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->caption:Ljava/lang/String;

    iput-object v0, v1, Lcom/lostpixels/fieldservice/ui/TwoLinesButton$SavedState;->stateToSave:Ljava/lang/String;

    return-object v1
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->caption:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
