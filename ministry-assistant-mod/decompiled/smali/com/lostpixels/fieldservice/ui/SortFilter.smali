.class public Lcom/lostpixels/fieldservice/ui/SortFilter;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/ui/SortFilter$OnTabClickListener;,
        Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;
    }
.end annotation


# instance fields
.field private final accentColor:I

.field private final isDarkColor:Z

.field private final mActiveTabs:Ljava/util/HashMap;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconCanvas:Landroid/graphics/Canvas;

.field private mIconSelected:Landroid/graphics/Bitmap;

.field private mOnTabClickListener:Lcom/lostpixels/fieldservice/ui/SortFilter$OnTabClickListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mTabMembers:Ljava/util/ArrayList;

.field private pTemp:Landroid/graphics/Paint;

.field final r:Landroid/graphics/Rect;

.field private final tintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 50
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->r:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 46
    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mOnTabClickListener:Lcom/lostpixels/fieldservice/ui/SortFilter$OnTabClickListener;

    .line 52
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    .line 54
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 56
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 58
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v2, -0x100

    .line 59
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 62
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v3, -0x1

    .line 63
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x1

    .line 64
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 66
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 67
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const p2, -0x666667

    .line 68
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 70
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mActiveTabs:Ljava/util/HashMap;

    .line 72
    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getPrimaryColor(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->tintColor:I

    .line 73
    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getAccentColor(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->accentColor:I

    .line 74
    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/ui/SortFilter;->isColorDark(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->isDarkColor:Z

    return-void
.end method


# virtual methods
.method public addTabMember(Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mActiveTabs:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->getTabGroup()Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isColorDark(I)Z
    .locals 4

    .line 80
    invoke-static {p1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 115
    const-string v2, "iTab onDraw start"

    const-string v3, "SortFilter"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 122
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    div-int/2addr v2, v4

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iTab: SingleTabWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget v4, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->tintColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v4, 0x0

    .line 130
    :goto_1
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 131
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->getIconResourceId()I

    move-result v7

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mIcon:Landroid/graphics/Bitmap;

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->getIconResourceIdSelected()I

    move-result v7

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mIconSelected:Landroid/graphics/Bitmap;

    .line 136
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->pTemp:Landroid/graphics/Paint;

    .line 137
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6}, Landroid/graphics/Canvas;-><init>()V

    iput-object v6, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mIconCanvas:Landroid/graphics/Canvas;

    .line 140
    iget-object v6, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mActiveTabs:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->getTabGroup()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 141
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->isCheckItem()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v4, :cond_2

    :cond_1
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 142
    :cond_2
    iget-object v8, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->pTemp:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    iget-object v10, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v12, v10

    iget-object v10, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v13, v10

    const v15, -0xab381f

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, -0x1

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 144
    :cond_3
    iget-object v8, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->pTemp:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    iget-object v10, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v12, v10

    iget-object v10, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v13, v10

    const v15, -0xa0a0a1

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v14, -0x5d5d5e

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 147
    :goto_2
    iget-object v10, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mIconCanvas:Landroid/graphics/Canvas;

    iget-object v8, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v13, v8

    iget-object v8, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v14, v8

    iget-object v15, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->pTemp:Landroid/graphics/Paint;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-int v8, v2, v4

    .line 150
    div-int/lit8 v9, v2, 0x2

    iget-object v10, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    add-int/2addr v9, v8

    .line 151
    iget-object v10, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->r:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget-object v11, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    .line 153
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->isCheckItem()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_5

    :cond_4
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 154
    :cond_5
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mPaint:Landroid/graphics/Paint;

    const/16 v6, 0x25

    const/16 v11, 0xff

    invoke-virtual {v5, v6, v11, v11, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 156
    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->r:Landroid/graphics/Rect;

    iget v11, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v11

    add-int/2addr v8, v7

    int-to-float v8, v8

    iget v12, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v7

    int-to-float v12, v12

    add-int/lit8 v13, v4, 0x1

    mul-int v13, v13, v2

    add-int/2addr v11, v13

    sub-int/2addr v11, v7

    int-to-float v7, v11

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v6, -0x2

    int-to-float v6, v6

    invoke-direct {v5, v8, v12, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-virtual {v1, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 157
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 158
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 159
    iget-object v6, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mIconSelected:Landroid/graphics/Bitmap;

    int-to-float v7, v9

    int-to-float v8, v10

    invoke-virtual {v1, v6, v7, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 162
    :cond_6
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 163
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v7, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->isDarkColor:Z

    if-eqz v7, :cond_7

    const v7, -0x333334

    goto :goto_3

    :cond_7
    const v7, -0xbbbbbc

    :goto_3
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 164
    iget-object v6, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mIcon:Landroid/graphics/Bitmap;

    int-to-float v7, v9

    int-to-float v8, v10

    invoke-virtual {v1, v6, v7, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 168
    :goto_4
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mIconSelected:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 172
    :cond_8
    const-string v1, "iTab onDraw finished"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x2

    .line 177
    new-array v0, v0, [I

    .line 178
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 182
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 183
    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 184
    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    div-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    div-float/2addr v3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    rem-float/2addr v3, v0

    sub-float/2addr v1, v3

    float-to-int v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 190
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .line 191
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;

    .line 192
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mActiveTabs:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->getTabGroup()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mOnTabClickListener:Lcom/lostpixels/fieldservice/ui/SortFilter$OnTabClickListener;

    if-eqz v1, :cond_3

    .line 195
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->getId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/lostpixels/fieldservice/ui/SortFilter$OnTabClickListener;->onTabClick(I)V

    .line 198
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 200
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(IZ)V
    .locals 2

    const/4 v0, 0x0

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;

    iput-boolean p2, p1, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->mIsChecked:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnTabClickListener(Lcom/lostpixels/fieldservice/ui/SortFilter$OnTabClickListener;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mOnTabClickListener:Lcom/lostpixels/fieldservice/ui/SortFilter$OnTabClickListener;

    return-void
.end method

.method public setSelected(I)V
    .locals 2

    const/4 v0, 0x0

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mActiveTabs:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter;->mTabMembers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->getTabGroup()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
