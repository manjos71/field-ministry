.class public Lcom/lostpixels/fieldservice/ui/MagazineRouteView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# static fields
.field private static msMonths:[Ljava/lang/String;

.field private static msMonthsFull:[Ljava/lang/String;


# instance fields
.field final bounds:Landroid/graphics/Rect;

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mGridPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private mTextPaint:Landroid/text/TextPaint;

.field private mbDisplayName:Z

.field private mbIsHeader:Z

.field private mbMagazineMap:[Z

.field private mdensity:F

.field private miMinHeight:I

.field private msName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->bounds:Landroid/graphics/Rect;

    .line 50
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static countOccurrences(Ljava/lang/String;C)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private drawHeader(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 238
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 239
    invoke-virtual {v0, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    const v2, -0x78746f

    .line 242
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 245
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msName:Ljava/lang/String;

    const-string v3, "X"

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mbDisplayName:Z

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x41a00000    # 20.0f

    iget v6, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mScale:F

    mul-float v6, v6, v5

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 248
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 249
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v3, v4, v8, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 251
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 252
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v7, Landroid/graphics/Rect;->left:I

    iget v11, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mdensity:F

    mul-float v12, v11, v10

    float-to-int v12, v12

    add-int/2addr v6, v12

    iget v12, v7, Landroid/graphics/Rect;->top:I

    mul-float v11, v11, v10

    float-to-int v11, v11

    add-int/2addr v12, v11

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/2addr v11, v9

    iget v13, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mdensity:F

    mul-float v14, v13, v10

    float-to-int v14, v14

    sub-int/2addr v11, v14

    iget v14, v7, Landroid/graphics/Rect;->bottom:I

    mul-float v13, v13, v10

    float-to-int v13, v13

    sub-int/2addr v14, v13

    invoke-direct {v5, v6, v12, v11, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    const/high16 v5, 0x40800000    # 4.0f

    .line 253
    iget v6, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mdensity:F

    mul-float v6, v6, v5

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v11, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mdensity:F

    mul-float v11, v11, v10

    float-to-int v11, v11

    add-int/2addr v2, v11

    sub-int/2addr v5, v2

    int-to-float v2, v5

    div-float/2addr v2, v10

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 254
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 255
    new-instance v11, Landroid/text/StaticLayout;

    iget-object v12, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msName:Ljava/lang/String;

    iget-object v13, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v14, v2, 0x2

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 256
    invoke-virtual {v11, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 257
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 263
    :cond_0
    iget-boolean v2, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mbDisplayName:Z

    const/high16 v5, 0x40c00000    # 6.0f

    if-eqz v2, :cond_1

    .line 264
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    div-float v5, v2, v5

    :goto_0
    move v11, v5

    goto :goto_1

    .line 267
    :cond_1
    iget v2, v7, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 268
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v5, v6, v5

    goto :goto_0

    .line 271
    :goto_1
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v6, 0x41200000    # 10.0f

    iget v12, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mScale:F

    mul-float v12, v12, v6

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 272
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 273
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v3, v4, v8, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 274
    iget-object v3, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 275
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/4 v3, 0x5

    .line 276
    invoke-virtual {v13, v3, v8}, Ljava/util/Calendar;->set(II)V

    .line 277
    invoke-virtual {v13, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v14, 0x7e2

    if-lt v3, v14, :cond_2

    .line 278
    invoke-virtual {v13, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v13, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    rem-int/2addr v5, v9

    sub-int/2addr v3, v5

    invoke-virtual {v13, v9, v3}, Ljava/util/Calendar;->set(II)V

    :cond_2
    :goto_2
    const/4 v3, 0x4

    if-ge v4, v3, :cond_5

    .line 281
    invoke-virtual {v13, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-gt v3, v14, :cond_4

    invoke-virtual {v13, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v14, :cond_3

    invoke-virtual {v13, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt v3, v9, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, -0x1

    .line 284
    invoke-virtual {v13, v9, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v3, -0x2

    .line 282
    invoke-virtual {v13, v9, v3}, Ljava/util/Calendar;->add(II)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x6

    move v15, v2

    const/16 v16, 0x6

    .line 287
    :goto_5
    iget v2, v7, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v2, v15, v2

    if-gez v2, :cond_8

    if-lez v16, :cond_8

    float-to-int v2, v15

    int-to-float v2, v2

    .line 289
    iget v3, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v4

    iget-object v6, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mGridPaint:Landroid/graphics/Paint;

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 292
    iget-boolean v2, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mbDisplayName:Z

    if-eqz v2, :cond_6

    .line 293
    invoke-direct {v0, v13}, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->getMonthText(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    div-float v3, v11, v10

    add-float/2addr v3, v15

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v10

    add-float/2addr v4, v5

    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 295
    :cond_6
    invoke-direct {v0, v13}, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->getMonthText(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    div-float v3, v11, v10

    add-float/2addr v3, v15

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v10

    add-float/2addr v4, v5

    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 296
    :goto_6
    invoke-virtual {v13, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-lt v2, v14, :cond_7

    const/4 v2, 0x2

    goto :goto_7

    :cond_7
    const/4 v2, 0x1

    :goto_7
    invoke-virtual {v13, v9, v2}, Ljava/util/Calendar;->add(II)V

    add-float/2addr v15, v11

    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    .line 307
    :cond_8
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawItem(Landroid/graphics/Canvas;)V
    .locals 14

    .line 183
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 184
    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    const v1, 0xffffff

    .line 187
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 190
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msName:Ljava/lang/String;

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mbDisplayName:Z

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 193
    new-instance v1, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mdensity:F

    mul-float v5, v4, v2

    float-to-int v5, v5

    add-int/2addr v3, v5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    mul-float v4, v4, v2

    float-to-int v4, v4

    add-int/2addr v5, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v6, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mdensity:F

    mul-float v7, v6, v2

    float-to-int v7, v7

    sub-int/2addr v4, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    mul-float v6, v6, v2

    float-to-int v6, v6

    sub-int/2addr v7, v6

    invoke-direct {v1, v3, v5, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    const/high16 v1, 0x40800000    # 4.0f

    .line 194
    iget v3, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mdensity:F

    mul-float v3, v3, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 195
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 196
    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msName:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V

    .line 198
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    move-object v4, p0

    move-object v5, p1

    .line 204
    :goto_0
    iget-boolean p1, v4, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mbDisplayName:Z

    const/high16 v1, 0x40c00000    # 6.0f

    if-eqz p1, :cond_1

    .line 205
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    div-float v1, p1, v1

    goto :goto_1

    .line 208
    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    .line 209
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v1

    .line 212
    :goto_1
    new-instance v6, Landroid/text/StaticLayout;

    iget-object v8, v4, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    float-to-int v9, v1

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v7, "X"

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v3, v6

    .line 213
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 214
    iget-object v6, v4, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    const-string v7, "X"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/4 v6, 0x6

    const/4 v12, 0x6

    const/4 v13, 0x0

    .line 217
    :goto_2
    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    cmpg-float v6, p1, v6

    if-gez v6, :cond_4

    if-lez v12, :cond_4

    .line 218
    iget-object v6, v4, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mbMagazineMap:[Z

    if-eqz v6, :cond_4

    array-length v6, v6

    if-lt v13, v6, :cond_2

    goto :goto_4

    :cond_2
    float-to-int v6, p1

    int-to-float v6, v6

    .line 221
    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v8

    iget-object v10, v4, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mGridPaint:Landroid/graphics/Paint;

    move v8, v6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 223
    iget-object v6, v4, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mbMagazineMap:[Z

    add-int/lit8 v8, v13, 0x1

    aget-boolean v6, v6, v13

    if-nez v6, :cond_3

    goto :goto_3

    .line 227
    :cond_3
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 228
    iget-object v6, v4, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    div-float v6, v1, v2

    add-float/2addr v6, p1

    .line 229
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 230
    invoke-virtual {v3, v5}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 231
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    :goto_3
    add-float/2addr p1, v1

    add-int/lit8 v12, v12, -0x1

    move v13, v8

    goto :goto_2

    .line 234
    :cond_4
    :goto_4
    iget-object p1, v4, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getMonthText(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 311
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x7e1

    const/4 v3, 0x2

    if-gt v1, v2, :cond_1

    .line 312
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mbDisplayName:Z

    if-eqz v0, :cond_0

    .line 313
    sget-object v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    .line 315
    :cond_0
    sget-object v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonthsFull:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    .line 317
    :cond_1
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const-string v1, "/"

    packed-switch p1, :pswitch_data_0

    .line 338
    const-string p1, ""

    return-object p1

    .line 335
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " g 3"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 332
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " wp 3"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 329
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " g 2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 326
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " wp 2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 323
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " g 1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 320
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " wp 1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 66
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iput v2, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mdensity:F

    .line 67
    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mScale:F

    .line 69
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 70
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    .line 71
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mGridPaint:Landroid/graphics/Paint;

    .line 73
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f04032f

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 77
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    const v5, 0xffffff

    const/16 v6, 0x1c

    if-lt v2, v6, :cond_0

    if-gt v2, v3, :cond_0

    .line 78
    iget v1, v1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    :cond_0
    const v1, 0xffffff

    .line 80
    :goto_0
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 85
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v8, 0x41a00000    # 20.0f

    iget v9, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mScale:F

    mul-float v9, v9, v8

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 88
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x7f040330

    invoke-virtual {v8, v9, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 93
    iget v8, v1, Landroid/util/TypedValue;->type:I

    if-lt v8, v6, :cond_1

    if-gt v8, v3, :cond_1

    .line 94
    iget v5, v1, Landroid/util/TypedValue;->data:I

    .line 95
    :cond_1
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mGridPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iput-boolean v4, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mbDisplayName:Z

    .line 101
    iput v2, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->miMinHeight:I

    .line 102
    iput-boolean v2, v0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mbIsHeader:Z

    .line 104
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    const/16 v3, 0xc

    const/16 v5, 0xb

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/16 v14, 0xa

    if-nez v1, :cond_2

    .line 105
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    const/16 v15, 0x14

    .line 106
    invoke-static {v2, v15}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v2

    .line 107
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    invoke-static {v4, v15}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v4

    .line 108
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    invoke-static {v13, v15}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v13

    .line 109
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    invoke-static {v12, v15}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v12

    .line 110
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    invoke-static {v11, v15}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v11

    .line 111
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    invoke-static {v10, v15}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v10

    .line 112
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    invoke-static {v9, v15}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v9

    .line 113
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    invoke-static {v8, v15}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v8

    .line 114
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    invoke-static {v7, v15}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v7

    .line 115
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    invoke-static {v6, v15}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v6

    .line 116
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v14

    .line 117
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonths:[Ljava/lang/String;

    invoke-static {v5, v15}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v5

    .line 120
    :cond_2
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonthsFull:[Ljava/lang/String;

    if-nez v1, :cond_3

    .line 121
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonthsFull:[Ljava/lang/String;

    .line 122
    invoke-static {v2, v14}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 123
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v4, v14}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 124
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v13, v14}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    .line 125
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v12, v14}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    .line 126
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v11, v14}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    .line 127
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v10, v14}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    .line 128
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v9, v14}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 129
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v8, v14}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 130
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v7, v14}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 131
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v6, v14}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 132
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v14, v14}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    .line 133
    sget-object v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v5, v14}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    :cond_3
    return-void
.end method


# virtual methods
.method public displayName(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mbDisplayName:Z

    return-void
.end method

.method drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V
    .locals 6

    .line 343
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 346
    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_0

    .line 348
    aget-object v3, p3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, v0, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v2, v2

    .line 349
    iget-object v3, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    iget v5, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mdensity:F

    mul-float v5, v5, v4

    add-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 350
    aget-object v3, p3, v1

    int-to-float v4, p4

    add-int v5, p5, v2

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 175
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mbIsHeader:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->drawHeader(Landroid/graphics/Canvas;)V

    return-void

    .line 178
    :cond_0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->drawItem(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 167
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->miMinHeight:I

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mbIsHeader:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42200000    # 40.0f

    :goto_0
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mdensity:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    goto :goto_1

    :cond_0
    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    :goto_1
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIsHeader(Z)V
    .locals 1

    .line 155
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mbIsHeader:Z

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 158
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 161
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setMagazineMap([Z)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mbMagazineMap:[Z

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .line 139
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msName:Ljava/lang/String;

    .line 140
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->msName:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->countOccurrences(Ljava/lang/String;C)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int p1, p1, v0

    const/high16 v0, 0x41700000    # 15.0f

    iget v1, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->mdensity:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->miMinHeight:I

    return-void
.end method
