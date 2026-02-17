.class public Lcom/thebnich/floatinghintedittext/FloatingHintEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;
    }
.end annotation


# instance fields
.field private mAnimation:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

.field private mAnimationFrame:I

.field private final mAnimationSteps:I

.field private final mFloatingHintPaint:Landroid/graphics/Paint;

.field private final mHintColors:Landroid/content/res/ColorStateList;

.field private final mHintScale:F

.field private mWasEmpty:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mFloatingHintPaint:Landroid/graphics/Paint;

    .line 24
    sget-object p1, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;->NONE:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    iput-object p1, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mAnimation:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    .line 32
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/thebnich/floatinghintedittext/R$dimen;->floatinghintedittext_hint_scale:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 34
    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    iput p1, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mHintScale:F

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/thebnich/floatinghintedittext/R$dimen;->floatinghintedittext_animation_steps:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mAnimationSteps:I

    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mHintColors:Landroid/content/res/ColorStateList;

    .line 38
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mWasEmpty:Z

    return-void
.end method

.method private drawAnimationFrame(Landroid/graphics/Canvas;FFFFF)V
    .locals 0

    .line 141
    invoke-direct {p0, p2, p3}, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->lerp(FF)F

    move-result p2

    .line 142
    invoke-direct {p0, p5, p6}, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->lerp(FF)F

    move-result p3

    .line 143
    iget-object p5, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mFloatingHintPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 144
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p5, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mFloatingHintPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private lerp(FF)F
    .locals 2

    .line 148
    iget v0, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mAnimationFrame:I

    int-to-float v0, v0

    iget v1, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mAnimationSteps:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float p1, p1, v1

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method public getCompoundPaddingTop()I
    .locals 2

    .line 55
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 56
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mHintScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 57
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 88
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mAnimation:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    sget-object v1, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;->NONE:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 97
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    return-void

    .line 101
    :cond_2
    iget-object v4, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mFloatingHintPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 102
    iget-object v4, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mFloatingHintPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mHintColors:Landroid/content/res/ColorStateList;

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v6

    iget-object v7, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mHintColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    .line 102
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v9, v4

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getBaseline()I

    move-result v4

    int-to-float v10, v4

    .line 107
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v4, v4

    add-float/2addr v4, v10

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float v11, v4, v5

    .line 108
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    .line 109
    iget v4, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mHintScale:F

    mul-float v8, v7, v4

    if-nez v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mFloatingHintPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 114
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mFloatingHintPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v11, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mAnimation:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    sget-object v4, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;->SHRINK:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    if-ne v0, v4, :cond_4

    move-object v5, p0

    move-object v6, p1

    .line 119
    invoke-direct/range {v5 .. v11}, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->drawAnimationFrame(Landroid/graphics/Canvas;FFFFF)V

    goto :goto_2

    :cond_4
    move v5, v8

    move v8, v7

    move v7, v5

    move v5, v11

    move v11, v10

    move v10, v5

    move-object v5, p0

    move-object v6, p1

    .line 122
    invoke-direct/range {v5 .. v11}, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->drawAnimationFrame(Landroid/graphics/Canvas;FFFFF)V

    .line 126
    :goto_2
    iget p1, v5, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mAnimationFrame:I

    add-int/2addr p1, v3

    iput p1, v5, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mAnimationFrame:I

    .line 128
    iget v0, v5, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mAnimationSteps:I

    if-ne p1, v0, :cond_6

    .line 129
    iget-object p1, v5, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mAnimation:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    sget-object v0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;->GROW:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    if-ne p1, v0, :cond_5

    .line 130
    iget-object p1, v5, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mHintColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 132
    :cond_5
    iput-object v1, v5, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mAnimation:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    .line 133
    iput v2, v5, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mAnimationFrame:I

    .line 136
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 64
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 67
    iget-boolean p2, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mWasEmpty:Z

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iput-boolean p1, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mWasEmpty:Z

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 79
    sget-object p1, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;->GROW:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    iput-object p1, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mAnimation:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHintTextColor(I)V

    return-void

    .line 82
    :cond_2
    sget-object p1, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;->SHRINK:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    iput-object p1, p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText;->mAnimation:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    return-void
.end method
