.class public abstract Lcom/lostpixels/fieldservice/ui/Chip;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/ui/Chip$OnSelectClickListener;
    }
.end annotation


# instance fields
.field private backgroundColor:I

.field private chipIcon:Landroid/graphics/drawable/Drawable;

.field private chipIconBitmap:Landroid/graphics/Bitmap;

.field private chipText:Ljava/lang/String;

.field private clicked:Z

.field private closable:Z

.field private closeColor:I

.field private cornerRadius:I

.field private deselectedBackgroundColor:I

.field private hasIcon:Z

.field icon:Landroid/widget/ImageView;

.field private iconText:Ljava/lang/String;

.field private iconTextBackgroundColor:I

.field private iconTextColor:I

.field private isCreated:Z

.field private onSelectClickListener:Lcom/lostpixels/fieldservice/ui/Chip$OnSelectClickListener;

.field private selectable:Z

.field private selected:Z

.field private selectedBackgroundColor:I

.field private selectedCloseColor:I

.field private selectedTextColor:I

.field private strokeColor:I

.field private strokeSize:I

.field private textColor:I


# direct methods
.method static bridge synthetic -$$Nest$monSelectTouchDown(Lcom/lostpixels/fieldservice/ui/Chip;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/Chip;->onSelectTouchDown()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSelectTouchUp(Lcom/lostpixels/fieldservice/ui/Chip;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/Chip;->onSelectTouchUp()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, v0, v1}, Lcom/lostpixels/fieldservice/ui/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/lostpixels/fieldservice/ui/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    invoke-direct {p0, p2}, Lcom/lostpixels/fieldservice/ui/Chip;->initTypedArray(Landroid/util/AttributeSet;)V

    .line 85
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/Chip;->initSelectClick()V

    return-void
.end method

.method private buildView()V
    .locals 1

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->isCreated:Z

    .line 251
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/Chip;->initBackgroundColor()V

    .line 252
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/Chip;->initTextView()V

    .line 253
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/Chip;->initImageIcon()V

    return-void
.end method

.method public static crateBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0700ad

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 143
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 145
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 147
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method public static generateText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-object p0

    .line 188
    :cond_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 189
    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 190
    aget-object p0, p0, v2

    .line 191
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 193
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 203
    :cond_1
    aget-object v0, p0, v2

    .line 204
    aget-object p0, p0, v3

    .line 206
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 211
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0700ad

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 121
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 126
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 127
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    .line 129
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/high16 v4, -0x10000

    .line 131
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    invoke-virtual {v1, p0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 134
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 135
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static getCircleBitmapWithText(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 7

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0700ad

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 155
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 159
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 160
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 161
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v6, 0x1

    .line 163
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 165
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    invoke-virtual {v1, p0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 167
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p0, 0x41f00000    # 30.0f

    .line 168
    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 p0, 0x42480000    # 50.0f

    .line 169
    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 170
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 171
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 173
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p0, p2

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result p2

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result p3

    add-float/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-float/2addr p0, p2

    float-to-int p0, p0

    .line 174
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p3

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v5, p3

    sub-float/2addr p2, v5

    float-to-int p2, p2

    .line 176
    invoke-virtual {v1, v0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    int-to-float p0, p0

    int-to-float p2, p2

    .line 177
    invoke-virtual {v1, p1, p0, p2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static getScaledBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0700af

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    const/4 v0, 0x0

    .line 91
    invoke-static {p1, p0, p0, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getSquareBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 98
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 103
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 104
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 99
    invoke-static {p0, v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 111
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 112
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 107
    invoke-static {p0, v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private initBackgroundColor()V
    .locals 11

    .line 406
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 407
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 408
    iget v2, p0, Lcom/lostpixels/fieldservice/ui/Chip;->cornerRadius:I

    int-to-float v3, v2

    int-to-float v4, v2

    int-to-float v5, v2

    int-to-float v6, v2

    int-to-float v7, v2

    int-to-float v8, v2

    int-to-float v9, v2

    int-to-float v2, v2

    const/16 v10, 0x8

    new-array v10, v10, [F

    aput v3, v10, v1

    const/4 v1, 0x1

    aput v4, v10, v1

    const/4 v1, 0x2

    aput v5, v10, v1

    const/4 v1, 0x3

    aput v6, v10, v1

    const/4 v1, 0x4

    aput v7, v10, v1

    const/4 v1, 0x5

    aput v8, v10, v1

    const/4 v1, 0x6

    aput v9, v10, v1

    const/4 v1, 0x7

    aput v2, v10, v1

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 410
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->clicked:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selectedBackgroundColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->backgroundColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 411
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->strokeSize:I

    iget v2, p0, Lcom/lostpixels/fieldservice/ui/Chip;->strokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 413
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initImageIcon()V
    .locals 9

    .line 334
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->hasIcon:Z

    if-nez v0, :cond_0

    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 339
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->icon:Landroid/widget/ImageView;

    .line 340
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x14

    .line 341
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 342
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->icon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 344
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->icon:Landroid/widget/ImageView;

    const v1, 0x910518

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 346
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->chipIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 347
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/ui/Chip;->crateBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 348
    :goto_0
    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/Chip;->getSquareBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 349
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/ui/Chip;->getScaledBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 351
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/ui/Chip;->createSelectBackroundCircle(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 352
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 353
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 354
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 355
    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/graphics/Canvas;)I

    move-result v2

    sub-int v2, v1, v2

    shr-int/lit8 v2, v2, 0x1

    .line 356
    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/graphics/Canvas;)I

    move-result v5

    sub-int/2addr v1, v5

    shr-int/lit8 v1, v1, 0x1

    .line 357
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 358
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    int-to-float v2, v2

    int-to-float v1, v1

    .line 359
    invoke-virtual {v4, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 360
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/lostpixels/fieldservice/ui/Chip;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->chipIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 363
    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/Chip;->getSquareBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->chipIconBitmap:Landroid/graphics/Bitmap;

    .line 364
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/Chip;->chipIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/ui/Chip;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 365
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->iconText:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 368
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->iconText:Ljava/lang/String;

    iget v2, p0, Lcom/lostpixels/fieldservice/ui/Chip;->iconTextColor:I

    iget v3, p0, Lcom/lostpixels/fieldservice/ui/Chip;->iconTextBackgroundColor:I

    invoke-static {v0, v1, v2, v3}, Lcom/lostpixels/fieldservice/ui/Chip;->getCircleBitmapWithText(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initSelectClick()V
    .locals 1

    .line 266
    new-instance v0, Lcom/lostpixels/fieldservice/ui/Chip$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/ui/Chip$1;-><init>(Lcom/lostpixels/fieldservice/ui/Chip;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initTextView()V
    .locals 6

    .line 377
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    const/high16 v2, 0x41500000    # 13.0f

    .line 378
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 380
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 381
    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/ui/Chip;->hasIcon:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/ui/Chip;->closable:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selectable:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xd

    .line 385
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v3, 0x11

    const v4, 0x910518

    .line 382
    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xf

    .line 383
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 388
    :goto_1
    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/ui/Chip;->hasIcon:Z

    const v4, 0x7f0700ae

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0700b0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    :goto_2
    float-to-int v3, v3

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    goto :goto_2

    .line 389
    :goto_3
    iget-boolean v5, p0, Lcom/lostpixels/fieldservice/ui/Chip;->closable:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selectable:Z

    if-eqz v5, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v4, 0x0

    .line 390
    :goto_5
    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 397
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->clicked:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selectedTextColor:I

    goto :goto_6

    :cond_5
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->textColor:I

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->chipText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x59118

    .line 400
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 402
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initTypedArray(Landroid/util/AttributeSet;)V
    .locals 4

    .line 417
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/lostpixels/fieldservice/R$styleable;->Chip:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0x26

    .line 419
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->chipText:Ljava/lang/String;

    const/16 v0, 0x2b

    .line 420
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->hasIcon:Z

    const/16 v0, 0x25

    .line 421
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->chipIcon:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x27

    .line 422
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->closable:Z

    const/16 v0, 0x2f

    .line 423
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selectable:Z

    .line 424
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06005f

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x24

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->backgroundColor:I

    .line 425
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060063

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selectedBackgroundColor:I

    .line 426
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060060

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/16 v2, 0x2a

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->deselectedBackgroundColor:I

    .line 427
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f060064

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/16 v2, 0x35

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->textColor:I

    .line 428
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f060065

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/16 v2, 0x32

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selectedTextColor:I

    .line 429
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f060062

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/16 v2, 0x28

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->closeColor:I

    .line 430
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f060061

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/16 v3, 0x31

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selectedCloseColor:I

    .line 431
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0700ad

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    const/16 v3, 0x29

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->cornerRadius:I

    const/16 v0, 0x34

    const/4 v3, 0x0

    .line 432
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->strokeSize:I

    .line 433
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/16 v3, 0x33

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->strokeColor:I

    const/16 v0, 0x2c

    .line 434
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->iconText:Ljava/lang/String;

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x2e

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->iconTextColor:I

    .line 436
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->iconTextBackgroundColor:I

    .line 438
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private onSelectTouchDown()V
    .locals 1

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->clicked:Z

    return-void
.end method

.method private onSelectTouchUp()V
    .locals 2

    .line 291
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selected:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 292
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->clicked:Z

    :cond_0
    xor-int/lit8 v0, v0, 0x1

    .line 295
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selected:Z

    .line 296
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->onSelectClickListener:Lcom/lostpixels/fieldservice/ui/Chip$OnSelectClickListener;

    if-eqz v1, :cond_1

    .line 297
    invoke-interface {v1, p0, v0}, Lcom/lostpixels/fieldservice/ui/Chip$OnSelectClickListener;->onSelectClick(Landroid/view/View;Z)V

    .line 300
    :cond_1
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/Chip;->initImageIcon()V

    return-void
.end method


# virtual methods
.method public changeSelectedBackgroundColor(I)V
    .locals 0

    .line 495
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selectedBackgroundColor:I

    return-void
.end method

.method protected createSelectBackroundCircle(I)Landroid/graphics/Bitmap;
    .locals 5

    .line 312
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 317
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 320
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 321
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 322
    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selected:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selectedBackgroundColor:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/lostpixels/fieldservice/ui/Chip;->deselectedBackgroundColor:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 324
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 325
    invoke-virtual {v1, p1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 326
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 483
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->backgroundColor:I

    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->chipIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getChipText()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->chipText:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseColor()I
    .locals 1

    .line 523
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->closeColor:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 539
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->cornerRadius:I

    return v0
.end method

.method public getDeselectedBackgroundColor()I
    .locals 1

    .line 499
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->deselectedBackgroundColor:I

    return v0
.end method

.method public getIconText()Ljava/lang/String;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->iconText:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedBackgroundColor()I
    .locals 1

    .line 491
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selectedBackgroundColor:I

    return v0
.end method

.method public getSelectedCloseColor()I
    .locals 1

    .line 531
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selectedCloseColor:I

    return v0
.end method

.method public getSelectedTextColor()I
    .locals 1

    .line 515
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selectedTextColor:I

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 564
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->strokeColor:I

    return v0
.end method

.method public getStrokeSize()I
    .locals 1

    .line 556
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->strokeSize:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 507
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->textColor:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selected:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 223
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/Chip;->isCreated:Z

    if-nez v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/Chip;->buildView()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 231
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x2

    .line 235
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700ad

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 238
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 243
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 244
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-ge p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->isCreated:Z

    if-nez p1, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/Chip;->buildView()V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 305
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method

.method public setChipIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->chipIconBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 465
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->hasIcon:Z

    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->chipIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 470
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->hasIcon:Z

    return-void
.end method

.method public setChipText(Ljava/lang/String;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->chipText:Ljava/lang/String;

    return-void
.end method

.method public setClosable(Z)V
    .locals 0

    .line 478
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->closable:Z

    const/4 p1, 0x0

    .line 479
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selectable:Z

    return-void
.end method

.method public setCloseColor(I)V
    .locals 0

    .line 527
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->closeColor:I

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    .line 543
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->cornerRadius:I

    return-void
.end method

.method public setHasIcon(Z)V
    .locals 0

    .line 455
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->hasIcon:Z

    return-void
.end method

.method public setIconText(Ljava/lang/String;)V
    .locals 1

    .line 577
    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/Chip;->generateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->iconText:Ljava/lang/String;

    .line 578
    iget p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->iconTextColor:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060060

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    :cond_0
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->iconTextColor:I

    .line 579
    iget p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->iconTextBackgroundColor:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060061

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    :cond_1
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->iconTextBackgroundColor:I

    return-void
.end method

.method public setOnSelectClickListener(Lcom/lostpixels/fieldservice/ui/Chip$OnSelectClickListener;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->onSelectClickListener:Lcom/lostpixels/fieldservice/ui/Chip$OnSelectClickListener;

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 551
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selectable:Z

    const/4 p1, 0x0

    .line 552
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->closable:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 594
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selected:Z

    .line 595
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/Chip;->initImageIcon()V

    return-void
.end method

.method public setSelectedCloseColor(I)V
    .locals 0

    .line 535
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selectedCloseColor:I

    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 0

    .line 519
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->selectedTextColor:I

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    .line 568
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->strokeColor:I

    return-void
.end method

.method public setStrokeSize(I)V
    .locals 0

    .line 560
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->strokeSize:I

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 511
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/Chip;->textColor:I

    return-void
.end method
