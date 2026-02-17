.class public Lcom/lostpixels/fieldservice/ui/FlowLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private debugDraw:Z

.field private horizontalSpacing:I

.field private orientation:I

.field private verticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->horizontalSpacing:I

    .line 19
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->verticalSpacing:I

    .line 20
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->orientation:I

    .line 21
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->debugDraw:Z

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/ui/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createPaint(I)Landroid/graphics/Paint;
    .locals 2

    .line 280
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 281
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 282
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 283
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object v0
.end method

.method private drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 20

    move-object/from16 v0, p0

    .line 227
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->debugDraw:Z

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v1, -0x100

    .line 231
    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/ui/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v7

    const v1, -0xff0100

    .line 232
    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/ui/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v13

    const/high16 v1, -0x10000

    .line 233
    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/ui/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v19

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;

    .line 237
    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgethorizontalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result v2

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v15, 0x40800000    # 4.0f

    if-lez v2, :cond_1

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v3, v2

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v14

    add-float v6, v2, v4

    .line 240
    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgethorizontalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v5, v3, v2

    move v4, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v8, v3

    .line 241
    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgethorizontalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v3, v8, v2

    sub-float/2addr v3, v15

    sub-float v6, v4, v15

    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgethorizontalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v5, v8, v2

    move v2, v6

    move v6, v4

    move v4, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v4, v6

    .line 242
    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgethorizontalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v3, v8, v2

    sub-float/2addr v3, v15

    add-float v6, v4, v15

    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgethorizontalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v5, v8, v2

    move v2, v6

    move v6, v4

    move v4, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 243
    :cond_1
    iget v2, v0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->horizontalSpacing:I

    if-lez v2, :cond_2

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v9, v2

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v14

    add-float v12, v2, v3

    .line 246
    iget v2, v0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->horizontalSpacing:I

    int-to-float v2, v2

    add-float v11, v9, v2

    move v10, v12

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v2, v9

    .line 247
    iget v3, v0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->horizontalSpacing:I

    int-to-float v4, v3

    add-float v9, v2, v4

    sub-float/2addr v9, v15

    sub-float v12, v10, v15

    int-to-float v3, v3

    add-float v11, v2, v3

    move v8, v12

    move v12, v10

    move v10, v8

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v10, v12

    .line 248
    iget v3, v0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->horizontalSpacing:I

    int-to-float v4, v3

    add-float v9, v2, v4

    sub-float/2addr v9, v15

    add-float v12, v10, v15

    int-to-float v3, v3

    add-float v11, v2, v3

    move v8, v12

    move v12, v10

    move v10, v8

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 251
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgetverticalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result v2

    if-lez v2, :cond_3

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v14

    add-float v5, v2, v3

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v4, v2

    .line 254
    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgetverticalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v6, v4, v2

    move v3, v5

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v8, v4

    sub-float v5, v3, v15

    .line 255
    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgetverticalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v4, v8, v2

    sub-float/2addr v4, v15

    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgetverticalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v6, v8, v2

    move v2, v5

    move v5, v3

    move v3, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v3, v5

    add-float v5, v3, v15

    .line 256
    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgetverticalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v4, v8, v2

    sub-float/2addr v4, v15

    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgetverticalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v6, v8, v2

    move v2, v5

    move v5, v3

    move v3, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 257
    :cond_3
    iget v2, v0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->verticalSpacing:I

    if-lez v2, :cond_4

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v14

    add-float v11, v2, v3

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v10, v2

    .line 260
    iget v2, v0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->verticalSpacing:I

    int-to-float v2, v2

    add-float v12, v10, v2

    move v9, v11

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v2, v10

    sub-float v11, v9, v15

    .line 261
    iget v3, v0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->verticalSpacing:I

    int-to-float v4, v3

    add-float v10, v2, v4

    sub-float/2addr v10, v15

    int-to-float v3, v3

    add-float v12, v2, v3

    move v8, v11

    move v11, v9

    move v9, v8

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v9, v11

    add-float v11, v9, v15

    .line 262
    iget v3, v0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->verticalSpacing:I

    int-to-float v4, v3

    add-float v10, v2, v4

    sub-float/2addr v10, v15

    int-to-float v3, v3

    add-float v12, v2, v3

    move v8, v11

    move v11, v9

    move v9, v8

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 265
    :cond_4
    :goto_1
    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgetnewLine(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 266
    iget v1, v0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->orientation:I

    const/high16 v2, 0x40c00000    # 6.0f

    if-nez v1, :cond_5

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v15, v1

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v14

    add-float/2addr v1, v3

    sub-float v16, v1, v2

    add-float v18, v1, v2

    move/from16 v17, v15

    move-object/from16 v14, p1

    .line 269
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 271
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v14

    add-float/2addr v1, v3

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v15, v1, v2

    add-float v17, v1, v2

    move/from16 v18, v3

    move-object/from16 v14, p1

    move/from16 v16, v3

    .line 273
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private getHorizontalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I
    .locals 1

    .line 166
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->horizontalSpacingSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgethorizontalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result p1

    return p1

    .line 169
    :cond_0
    iget p1, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->horizontalSpacing:I

    return p1
.end method

.method private getVerticalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I
    .locals 1

    .line 156
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->verticalSpacingSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgetverticalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result p1

    return p1

    .line 159
    :cond_0
    iget p1, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->verticalSpacing:I

    return p1
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 215
    sget-object v0, Lcom/lostpixels/fieldservice/R$styleable;->FlowLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 217
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->horizontalSpacing:I

    const/4 p2, 0x5

    .line 218
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->verticalSpacing:I

    const/4 p2, 0x1

    .line 219
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->orientation:I

    .line 220
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->debugDraw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
    throw p2
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 193
    instance-of p1, p1, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/ui/FlowLayout;->drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V

    return p3
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/FlowLayout;->generateDefaultLayoutParams()Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;
    .locals 2

    .line 199
    new-instance v0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/FlowLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/FlowLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;
    .locals 2

    .line 205
    new-instance v0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;
    .locals 1

    .line 211
    new-instance v0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 176
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 178
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 179
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;

    .line 180
    invoke-static {p4}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgetx(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result p5

    invoke-static {p4}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgety(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result v0

    invoke-static {p4}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgetx(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p4}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgety(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result p4

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p4, v2

    invoke-virtual {p3, p5, v0, v1, p4}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 43
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 44
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 46
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 47
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 52
    iget v7, v0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->orientation:I

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    move v5, v6

    .line 70
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v6, v4, :cond_6

    .line 72
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 73
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_1

    move/from16 v16, v4

    goto/16 :goto_4

    .line 77
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    add-int/2addr v14, v15

    iget v15, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v14, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v14

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    add-int v15, v15, v16

    move/from16 v16, v4

    iget v4, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v15, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 79
    invoke-virtual {v13, v14, v4}, Landroid/view/View;->measure(II)V

    .line 84
    invoke-direct {v0, v8}, Lcom/lostpixels/fieldservice/ui/FlowLayout;->getHorizontalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result v4

    .line 85
    invoke-direct {v0, v8}, Lcom/lostpixels/fieldservice/ui/FlowLayout;->getVerticalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I

    move-result v14

    .line 87
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 88
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    move/from16 v17, v4

    .line 95
    iget v4, v0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->orientation:I

    if-nez v4, :cond_2

    move v4, v13

    goto :goto_2

    :cond_2
    move/from16 v4, v17

    move/from16 v17, v14

    move v14, v4

    move v4, v15

    move v15, v13

    :goto_2
    add-int/2addr v9, v15

    add-int v18, v9, v17

    .line 110
    invoke-static {v8}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->-$$Nest$fgetnewLine(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)Z

    move-result v19

    if-nez v19, :cond_3

    if-eqz v5, :cond_4

    if-le v9, v3, :cond_4

    :cond_3
    add-int/2addr v12, v10

    add-int v10, v4, v14

    add-int v18, v15, v17

    move v11, v4

    move v9, v15

    :cond_4
    add-int/2addr v14, v4

    .line 120
    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 121
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 125
    iget v11, v0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->orientation:I

    if-nez v11, :cond_5

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    add-int/2addr v11, v9

    sub-int/2addr v11, v15

    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    add-int/2addr v13, v12

    goto :goto_3

    .line 129
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    add-int/2addr v11, v12

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    add-int/2addr v14, v9

    sub-int v13, v14, v13

    .line 132
    :goto_3
    invoke-virtual {v8, v11, v13}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->setPosition(II)V

    .line 134
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v8, v12, v4

    move v11, v4

    move/from16 v9, v18

    :goto_4
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v16

    goto/16 :goto_1

    .line 139
    :cond_6
    iget v3, v0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->orientation:I

    if-nez v3, :cond_7

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v7, v3

    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    :goto_5
    add-int/2addr v3, v4

    add-int/2addr v8, v3

    goto :goto_6

    .line 143
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v7, v3

    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    goto :goto_5

    .line 147
    :goto_6
    iget v3, v0, Lcom/lostpixels/fieldservice/ui/FlowLayout;->orientation:I

    if-nez v3, :cond_8

    .line 148
    invoke-static {v7, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v8, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 150
    :cond_8
    invoke-static {v8, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v7, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
