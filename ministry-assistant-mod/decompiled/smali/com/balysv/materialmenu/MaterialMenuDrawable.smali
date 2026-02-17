.class public Lcom/balysv/materialmenu/MaterialMenuDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;,
        Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;,
        Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;,
        Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;
    }
.end annotation


# instance fields
.field private animatingIconState:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

.field private animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

.field private final circlePaint:Landroid/graphics/Paint;

.field private final circleRadius:F

.field private currentIconState:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

.field private final dip1:F

.field private final dip2:F

.field private final dip3:F

.field private final dip4:F

.field private final dip8:F

.field private final diph:F

.field private final height:I

.field private final iconPaint:Landroid/graphics/Paint;

.field private final iconWidth:F

.field private final lock:Ljava/lang/Object;

.field private materialMenuState:Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;

.field private rtlEnabled:Z

.field private final sidePadding:F

.field private final stroke:Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

.field private final strokeWidth:F

.field private final topPadding:F

.field private transformation:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private transformationProperty:Lcom/nineoldandroids/util/Property;

.field private transformationRunning:Z

.field private transformationValue:F

.field private visible:Z

.field private final width:I


# direct methods
.method private constructor <init>(ILcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;JIIFFFF)V
    .locals 3

    .line 223
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->lock:Ljava/lang/Object;

    .line 168
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconPaint:Landroid/graphics/Paint;

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->circlePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationValue:F

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationRunning:Z

    .line 174
    sget-object v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;->BURGER:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->currentIconState:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    .line 175
    sget-object v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->BURGER_ARROW:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    .line 705
    new-instance v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "transformation"

    invoke-direct {v0, p0, v1, v2}, Lcom/balysv/materialmenu/MaterialMenuDrawable$1;-><init>(Lcom/balysv/materialmenu/MaterialMenuDrawable;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationProperty:Lcom/nineoldandroids/util/Property;

    .line 224
    iput p10, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip1:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p10, v0

    .line 225
    iput v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip2:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v1, v1, p10

    .line 226
    iput v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v2, v2, p10

    .line 227
    iput v2, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip4:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float v2, v2, p10

    .line 228
    iput v2, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip8:F

    div-float/2addr p10, v0

    .line 229
    iput p10, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->diph:F

    .line 230
    iput-object p2, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->stroke:Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    .line 231
    iput p5, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    .line 232
    iput p6, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->height:I

    .line 233
    iput p7, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconWidth:F

    .line 234
    iput p8, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->circleRadius:F

    .line 235
    iput p9, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->strokeWidth:F

    int-to-float p2, p5

    sub-float/2addr p2, p7

    div-float/2addr p2, v0

    .line 236
    iput p2, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->sidePadding:F

    int-to-float p2, p6

    const/high16 p5, 0x40a00000    # 5.0f

    mul-float v1, v1, p5

    sub-float/2addr p2, v1

    div-float/2addr p2, v0

    .line 237
    iput p2, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->topPadding:F

    .line 239
    invoke-direct {p0, p1}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->initPaint(I)V

    long-to-int p1, p3

    .line 240
    invoke-direct {p0, p1}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->initAnimations(I)V

    .line 242
    new-instance p1, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;-><init>(Lcom/balysv/materialmenu/MaterialMenuDrawable;Lcom/balysv/materialmenu/MaterialMenuDrawable$1;)V

    iput-object p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->materialMenuState:Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;

    return-void
.end method

.method synthetic constructor <init>(ILcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;JIIFFFFLcom/balysv/materialmenu/MaterialMenuDrawable$1;)V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p10}, Lcom/balysv/materialmenu/MaterialMenuDrawable;-><init>(ILcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;JIIFFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;)V
    .locals 6

    const/4 v4, 0x1

    const/16 v5, 0x320

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 187
    invoke-direct/range {v0 .. v5}, Lcom/balysv/materialmenu/MaterialMenuDrawable;-><init>(Landroid/content/Context;ILcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;II)V
    .locals 6

    .line 194
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->lock:Ljava/lang/Object;

    .line 168
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconPaint:Landroid/graphics/Paint;

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->circlePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationValue:F

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationRunning:Z

    .line 174
    sget-object v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;->BURGER:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->currentIconState:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    .line 175
    sget-object v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->BURGER_ARROW:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    .line 705
    new-instance v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "transformation"

    invoke-direct {v0, p0, v1, v2}, Lcom/balysv/materialmenu/MaterialMenuDrawable$1;-><init>(Lcom/balysv/materialmenu/MaterialMenuDrawable;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationProperty:Lcom/nineoldandroids/util/Property;

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 197
    invoke-static {p1, v0}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v0

    int-to-float p4, p4

    mul-float v0, v0, p4

    iput v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip1:F

    const/high16 v1, 0x40000000    # 2.0f

    .line 198
    invoke-static {p1, v1}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v2

    mul-float v2, v2, p4

    iput v2, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip2:F

    const/high16 v2, 0x40400000    # 3.0f

    .line 199
    invoke-static {p1, v2}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v2

    mul-float v2, v2, p4

    iput v2, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    const/high16 v3, 0x40800000    # 4.0f

    .line 200
    invoke-static {p1, v3}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v3

    mul-float v3, v3, p4

    iput v3, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip4:F

    const/high16 v3, 0x41000000    # 8.0f

    .line 201
    invoke-static {p1, v3}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v3

    mul-float v3, v3, p4

    iput v3, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip8:F

    div-float/2addr v0, v1

    .line 202
    iput v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->diph:F

    .line 204
    iput-object p3, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->stroke:Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->visible:Z

    const/high16 v0, 0x42200000    # 40.0f

    .line 206
    invoke-static {p1, v0}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v3

    mul-float v3, v3, p4

    float-to-int v3, v3

    iput v3, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    .line 207
    invoke-static {p1, v0}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v0

    mul-float v0, v0, p4

    float-to-int v0, v0

    iput v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->height:I

    const/high16 v4, 0x41a00000    # 20.0f

    .line 208
    invoke-static {p1, v4}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v4

    mul-float v4, v4, p4

    iput v4, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconWidth:F

    const/high16 v5, 0x41900000    # 18.0f

    .line 209
    invoke-static {p1, v5}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v5

    mul-float v5, v5, p4

    iput v5, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->circleRadius:F

    .line 210
    invoke-static {p3}, Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;->access$000(Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p1, p3}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dpToPx(Landroid/content/res/Resources;F)F

    move-result p1

    mul-float p1, p1, p4

    iput p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->strokeWidth:F

    int-to-float p1, v3

    sub-float/2addr p1, v4

    div-float/2addr p1, v1

    .line 212
    iput p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->sidePadding:F

    int-to-float p1, v0

    const/high16 p3, 0x40a00000    # 5.0f

    mul-float v2, v2, p3

    sub-float/2addr p1, v2

    div-float/2addr p1, v1

    .line 213
    iput p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->topPadding:F

    .line 215
    invoke-direct {p0, p2}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->initPaint(I)V

    .line 216
    invoke-direct {p0, p5}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->initAnimations(I)V

    .line 218
    new-instance p1, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;-><init>(Lcom/balysv/materialmenu/MaterialMenuDrawable;Lcom/balysv/materialmenu/MaterialMenuDrawable$1;)V

    iput-object p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->materialMenuState:Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;

    return-void
.end method

.method static synthetic access$1000(Lcom/balysv/materialmenu/MaterialMenuDrawable;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconWidth:F

    return p0
.end method

.method static synthetic access$1100(Lcom/balysv/materialmenu/MaterialMenuDrawable;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->circleRadius:F

    return p0
.end method

.method static synthetic access$1200(Lcom/balysv/materialmenu/MaterialMenuDrawable;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->strokeWidth:F

    return p0
.end method

.method static synthetic access$1300(Lcom/balysv/materialmenu/MaterialMenuDrawable;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip1:F

    return p0
.end method

.method static synthetic access$1500(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->currentIconState:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->visible:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->rtlEnabled:Z

    return p0
.end method

.method static synthetic access$202(Lcom/balysv/materialmenu/MaterialMenuDrawable;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animatingIconState:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    return-object p0
.end method

.method static synthetic access$500(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Landroid/graphics/Paint;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->circlePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$600(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->stroke:Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    return-object p0
.end method

.method static synthetic access$700(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformation:Lcom/nineoldandroids/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$800(Lcom/balysv/materialmenu/MaterialMenuDrawable;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    return p0
.end method

.method static synthetic access$900(Lcom/balysv/materialmenu/MaterialMenuDrawable;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->height:I

    return p0
.end method

.method static dpToPx(Landroid/content/res/Resources;F)F
    .locals 1

    const/4 v0, 0x1

    .line 862
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private drawBottomLine(Landroid/graphics/Canvas;F)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 451
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 452
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 457
    iget v3, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    iget v5, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 458
    iget v5, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->height:I

    int-to-float v6, v5

    iget v7, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->topPadding:F

    sub-float/2addr v6, v7

    iget v8, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip2:F

    sub-float/2addr v6, v8

    .line 460
    iget v9, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->sidePadding:F

    int-to-float v10, v5

    sub-float/2addr v10, v7

    sub-float/2addr v10, v8

    int-to-float v3, v3

    sub-float/2addr v3, v9

    int-to-float v5, v5

    sub-float/2addr v5, v7

    sub-float/2addr v5, v8

    .line 465
    sget-object v7, Lcom/balysv/materialmenu/MaterialMenuDrawable$3;->$SwitchMap$com$balysv$materialmenu$MaterialMenuDrawable$AnimationState:[I

    iget-object v8, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/high16 v8, -0x3dd00000    # -44.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x43070000    # 135.0f

    const/high16 v13, -0x3d4c0000    # -90.0f

    const/4 v14, 0x0

    packed-switch v7, :pswitch_data_0

    move v2, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    goto/16 :goto_4

    :pswitch_0
    sub-float/2addr v11, v2

    mul-float v14, v11, v13

    const/high16 v7, 0x42b20000    # 89.0f

    mul-float v7, v7, v2

    add-float/2addr v7, v8

    .line 543
    iget v8, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->sidePadding:F

    iget v12, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip4:F

    add-float v13, v8, v12

    iget v15, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move/from16 v16, v3

    iget v3, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    add-float/2addr v15, v3

    sub-float/2addr v15, v8

    sub-float/2addr v15, v12

    mul-float v15, v15, v2

    add-float v8, v13, v15

    .line 544
    iget v13, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->height:I

    int-to-float v15, v13

    move/from16 v17, v3

    iget v3, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->topPadding:F

    sub-float/2addr v15, v3

    sub-float v15, v15, v17

    move/from16 v17, v3

    div-int/lit8 v3, v13, 0x2

    int-to-float v3, v3

    add-float v3, v17, v3

    int-to-float v13, v13

    sub-float/2addr v3, v13

    mul-float v3, v3, v2

    add-float v2, v15, v3

    .line 547
    iget v3, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip8:F

    iget v13, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip1:F

    add-float/2addr v12, v13

    mul-float v12, v12, v11

    sub-float/2addr v3, v12

    add-float/2addr v9, v3

    .line 548
    invoke-direct {v0, v11}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->resolveStrokeModifier(F)F

    move-result v3

    sub-float v3, v16, v3

    move/from16 v18, v8

    move v8, v2

    move v2, v9

    move v9, v14

    move v14, v7

    move/from16 v7, v18

    goto/16 :goto_4

    :pswitch_1
    move/from16 v16, v3

    const/high16 v3, 0x42340000    # 45.0f

    mul-float v3, v3, v2

    .line 530
    iget v7, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    mul-float v11, v8, v2

    add-float/2addr v7, v11

    .line 531
    iget v11, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->height:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    mul-float v8, v8, v2

    sub-float/2addr v11, v8

    .line 534
    iget v8, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip8:F

    mul-float v8, v8, v2

    add-float/2addr v9, v8

    .line 535
    invoke-direct {v0, v2}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->resolveStrokeModifier(F)F

    move-result v2

    sub-float v2, v16, v2

    move v14, v3

    move v8, v11

    move v3, v2

    move v2, v9

    goto :goto_0

    :pswitch_2
    move/from16 v16, v3

    mul-float v3, v2, v13

    add-float/2addr v3, v12

    .line 518
    iget v7, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    mul-float v12, v8, v2

    add-float/2addr v7, v12

    .line 519
    iget v12, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->height:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    mul-float v8, v8, v2

    sub-float/2addr v12, v8

    .line 522
    invoke-direct {v0, v11}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->resolveStrokeModifier(F)F

    move-result v8

    sub-float v8, v16, v8

    .line 523
    iget v11, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    iget v13, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip4:F

    iget v15, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip1:F

    add-float/2addr v13, v15

    mul-float v13, v13, v2

    add-float/2addr v11, v13

    add-float/2addr v9, v11

    move v14, v3

    move v3, v8

    move v2, v9

    move v8, v12

    goto/16 :goto_0

    :pswitch_3
    move/from16 v16, v3

    const/high16 v3, 0x43350000    # 181.0f

    mul-float v3, v3, v2

    add-float v14, v3, v12

    mul-float v3, v2, v13

    .line 506
    iget v7, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    div-int/lit8 v8, v7, 0x2

    int-to-float v8, v8

    iget v11, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->sidePadding:F

    iget v12, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip4:F

    add-float/2addr v11, v12

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v11, v7

    mul-float v11, v11, v2

    add-float v7, v8, v11

    .line 507
    iget v8, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->height:I

    div-int/lit8 v11, v8, 0x2

    int-to-float v11, v11

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget v12, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->topPadding:F

    sub-float/2addr v8, v12

    iget v12, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    sub-float/2addr v8, v12

    mul-float v8, v8, v2

    add-float/2addr v8, v11

    .line 510
    invoke-direct {v0, v2}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->resolveStrokeModifier(F)F

    move-result v2

    sub-float v2, v16, v2

    .line 511
    iget v11, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    add-float/2addr v9, v11

    move/from16 v18, v3

    move v3, v2

    move v2, v9

    move/from16 v9, v18

    goto :goto_4

    :pswitch_4
    move/from16 v16, v3

    .line 483
    invoke-direct {v0}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->isMorphingForward()Z

    move-result v3

    if-eqz v3, :cond_0

    mul-float v3, v2, v13

    :goto_1
    move v14, v3

    goto :goto_2

    :cond_0
    const/high16 v3, 0x42b40000    # 90.0f

    mul-float v3, v3, v2

    goto :goto_1

    :goto_2
    mul-float v3, v2, v8

    .line 494
    iget v7, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->sidePadding:F

    iget v8, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip4:F

    add-float/2addr v7, v8

    .line 495
    iget v8, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->height:I

    int-to-float v8, v8

    iget v11, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->topPadding:F

    sub-float/2addr v8, v11

    iget v11, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    sub-float/2addr v8, v11

    mul-float v11, v11, v2

    add-float/2addr v9, v11

    move v2, v9

    move v9, v14

    move v14, v3

    move/from16 v3, v16

    goto :goto_4

    .line 467
    :pswitch_5
    invoke-direct {v0}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->isMorphingForward()Z

    move-result v3

    if-eqz v3, :cond_1

    mul-float v3, v2, v12

    goto :goto_3

    :cond_1
    sub-float/2addr v11, v2

    const/high16 v3, 0x43610000    # 225.0f

    mul-float v11, v11, v3

    add-float v3, v11, v12

    .line 475
    :goto_3
    iget v7, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    div-int/lit8 v8, v7, 0x2

    int-to-float v8, v8

    .line 476
    iget v9, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->height:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    int-to-float v7, v7

    .line 479
    iget v11, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->sidePadding:F

    sub-float/2addr v7, v11

    invoke-direct {v0, v2}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->resolveStrokeModifier(F)F

    move-result v11

    sub-float/2addr v7, v11

    .line 480
    iget v11, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->sidePadding:F

    iget v12, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    mul-float v12, v12, v2

    add-float v2, v11, v12

    move v14, v3

    move v3, v7

    move v7, v8

    move v8, v9

    goto/16 :goto_0

    .line 552
    :goto_4
    invoke-virtual {v1, v14, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 553
    invoke-virtual {v1, v9, v4, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 554
    iget-object v6, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconPaint:Landroid/graphics/Paint;

    move v4, v3

    move v3, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawMiddleLine(Landroid/graphics/Canvas;F)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 288
    iget v2, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    .line 289
    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    .line 290
    iget v5, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->sidePadding:F

    .line 291
    iget v6, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->topPadding:F

    iget v7, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v7, v8

    const/high16 v10, 0x40a00000    # 5.0f

    mul-float v9, v9, v10

    add-float v13, v6, v9

    int-to-float v2, v2

    sub-float/2addr v2, v5

    div-float/2addr v7, v8

    mul-float v7, v7, v10

    add-float v15, v6, v7

    .line 296
    sget-object v6, Lcom/balysv/materialmenu/MaterialMenuDrawable$3;->$SwitchMap$com$balysv$materialmenu$MaterialMenuDrawable$AnimationState:[I

    iget-object v7, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/high16 v7, 0x437f0000    # 255.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x43070000    # 135.0f

    const/4 v11, 0x0

    const/16 v12, 0xff

    packed-switch v6, :pswitch_data_0

    :goto_0
    move v14, v2

    move v1, v3

    const/16 v3, 0xff

    goto/16 :goto_6

    :pswitch_0
    mul-float v3, v1, v7

    float-to-int v3, v3

    mul-float v11, v1, v10

    .line 343
    iget v6, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip4:F

    iget v7, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    div-float v8, v7, v8

    add-float/2addr v6, v8

    mul-float v6, v6, v1

    add-float/2addr v5, v6

    .line 344
    iget v6, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip1:F

    mul-float v1, v1, v6

    add-float/2addr v2, v1

    .line 345
    iget v1, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v7

    iget v6, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->diph:F

    add-float/2addr v1, v6

    :goto_1
    move v14, v2

    goto/16 :goto_6

    :pswitch_1
    mul-float v11, v1, v10

    .line 333
    iget v3, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip4:F

    iget v6, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    div-float v7, v6, v8

    add-float/2addr v3, v7

    mul-float v3, v3, v1

    add-float/2addr v5, v3

    .line 334
    iget v3, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip1:F

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    .line 335
    iget v1, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v6

    iget v3, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->diph:F

    :goto_2
    add-float/2addr v3, v1

    goto :goto_0

    .line 317
    :pswitch_2
    invoke-direct {v0}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->isMorphingForward()Z

    move-result v3

    if-eqz v3, :cond_0

    mul-float v3, v1, v10

    move v11, v3

    goto :goto_3

    :cond_0
    sub-float v3, v9, v1

    mul-float v3, v3, v10

    sub-float/2addr v10, v3

    move v11, v10

    .line 325
    :goto_3
    iget v3, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    div-float v6, v3, v8

    iget v7, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip4:F

    add-float/2addr v6, v7

    sub-float/2addr v9, v1

    iget v7, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip2:F

    mul-float v9, v9, v7

    sub-float/2addr v6, v9

    add-float/2addr v5, v6

    .line 326
    iget v6, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip1:F

    mul-float v1, v1, v6

    add-float/2addr v2, v1

    .line 327
    iget v1, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v3

    iget v3, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->diph:F

    goto :goto_2

    :pswitch_3
    sub-float/2addr v9, v1

    mul-float v7, v7, v9

    float-to-int v1, v7

    .line 314
    iget v6, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip2:F

    mul-float v9, v9, v6

    add-float/2addr v5, v9

    :goto_4
    move v14, v3

    move v3, v1

    move v1, v14

    goto :goto_1

    :pswitch_4
    sub-float/2addr v9, v1

    mul-float v9, v9, v7

    float-to-int v1, v9

    goto :goto_4

    .line 299
    :pswitch_5
    invoke-direct {v0}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->isMorphingForward()Z

    move-result v6

    const/high16 v7, 0x43340000    # 180.0f

    if-eqz v6, :cond_1

    mul-float v6, v1, v7

    move v11, v6

    goto :goto_5

    :cond_1
    sub-float/2addr v9, v1

    mul-float v9, v9, v7

    add-float/2addr v9, v7

    move v11, v9

    .line 305
    :goto_5
    invoke-direct {v0, v1}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->resolveStrokeModifier(F)F

    move-result v6

    mul-float v1, v1, v6

    div-float/2addr v1, v8

    sub-float/2addr v2, v1

    goto/16 :goto_0

    .line 349
    :goto_6
    iget-object v2, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v2, p1

    .line 350
    invoke-virtual {v2, v11, v1, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 351
    iget-object v1, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    move-object v11, v2

    move v12, v5

    const/16 v1, 0xff

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 352
    iget-object v2, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawTopLine(Landroid/graphics/Canvas;F)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 356
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 361
    iget v3, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    iget v5, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 362
    iget v5, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->topPadding:F

    iget v6, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip2:F

    add-float v7, v5, v6

    .line 364
    iget v8, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->sidePadding:F

    add-float v9, v5, v6

    int-to-float v3, v3

    sub-float/2addr v3, v8

    add-float/2addr v5, v6

    .line 370
    sget-object v6, Lcom/balysv/materialmenu/MaterialMenuDrawable$3;->$SwitchMap$com$balysv$materialmenu$MaterialMenuDrawable$AnimationState:[I

    iget-object v10, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v6, v6, v10

    const/high16 v11, 0x437f0000    # 255.0f

    const/high16 v12, 0x42b40000    # 90.0f

    const/high16 v13, 0x43610000    # 225.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/high16 v16, 0x42300000    # 44.0f

    packed-switch v6, :pswitch_data_0

    const/16 v2, 0xff

    :goto_0
    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_1
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 433
    :pswitch_0
    iget v6, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->sidePadding:F

    iget v13, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip4:F

    add-float v15, v6, v13

    .line 434
    iget v6, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->topPadding:F

    iget v13, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    add-float/2addr v6, v13

    sub-float/2addr v14, v2

    mul-float v2, v13, v14

    sub-float v2, v13, v2

    add-float/2addr v3, v2

    add-float/2addr v8, v13

    mul-float v14, v14, v11

    float-to-int v2, v14

    const/high16 v10, 0x42300000    # 44.0f

    goto/16 :goto_4

    :pswitch_1
    sub-float/2addr v14, v2

    mul-float v14, v14, v11

    float-to-int v2, v14

    goto :goto_0

    :pswitch_2
    sub-float v2, v14, v2

    mul-float v2, v2, v11

    float-to-int v2, v2

    .line 418
    iget v6, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 419
    iget v11, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->height:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    .line 422
    invoke-direct {v0, v14}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->resolveStrokeModifier(F)F

    move-result v12

    sub-float/2addr v3, v12

    .line 423
    iget v12, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    add-float/2addr v8, v12

    move v15, v6

    move v6, v11

    const/high16 v10, 0x43610000    # 225.0f

    goto :goto_1

    :pswitch_3
    const/high16 v6, -0x3ccb0000    # -181.0f

    mul-float v6, v6, v2

    add-float/2addr v6, v13

    mul-float v12, v12, v2

    .line 406
    iget v11, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    div-int/lit8 v13, v11, 0x2

    int-to-float v13, v13

    iget v14, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->sidePadding:F

    iget v15, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip4:F

    add-float/2addr v14, v15

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v14, v11

    mul-float v14, v14, v2

    add-float v15, v13, v14

    .line 407
    iget v11, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->height:I

    div-int/lit8 v13, v11, 0x2

    int-to-float v13, v13

    iget v14, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->topPadding:F

    iget v10, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    add-float/2addr v14, v10

    div-int/lit8 v11, v11, 0x2

    int-to-float v10, v11

    sub-float/2addr v14, v10

    mul-float v14, v14, v2

    add-float v10, v13, v14

    .line 410
    invoke-direct {v0, v2}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->resolveStrokeModifier(F)F

    move-result v2

    sub-float/2addr v3, v2

    .line 411
    iget v2, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    add-float/2addr v8, v2

    move v2, v10

    move v10, v6

    move v6, v2

    :goto_2
    const/16 v2, 0xff

    goto :goto_4

    :pswitch_4
    mul-float v10, v2, v16

    mul-float v12, v12, v2

    .line 394
    iget v6, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->sidePadding:F

    iget v11, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip4:F

    add-float v15, v6, v11

    .line 395
    iget v6, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->topPadding:F

    iget v11, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    add-float/2addr v6, v11

    mul-float v11, v11, v2

    add-float/2addr v8, v11

    goto :goto_2

    .line 372
    :pswitch_5
    invoke-direct {v0}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->isMorphingForward()Z

    move-result v6

    if-eqz v6, :cond_0

    mul-float v6, v2, v13

    move v10, v6

    goto :goto_3

    :cond_0
    sub-float/2addr v14, v2

    const/high16 v6, 0x43070000    # 135.0f

    mul-float v14, v14, v6

    add-float/2addr v14, v13

    move v10, v14

    .line 380
    :goto_3
    iget v6, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 381
    iget v11, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->height:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    .line 384
    invoke-direct {v0, v2}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->resolveStrokeModifier(F)F

    move-result v12

    sub-float/2addr v3, v12

    .line 385
    iget v12, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    mul-float v12, v12, v2

    add-float/2addr v8, v12

    move v15, v6

    move v6, v11

    const/16 v2, 0xff

    goto/16 :goto_1

    .line 443
    :goto_4
    iget-object v11, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 444
    invoke-virtual {v1, v10, v15, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 445
    invoke-virtual {v1, v12, v4, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 446
    iget-object v6, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconPaint:Landroid/graphics/Paint;

    move v4, v3

    move v2, v8

    move v3, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 447
    iget-object v1, v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initAnimations(I)V
    .locals 4

    .line 728
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationProperty:Lcom/nineoldandroids/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lcom/nineoldandroids/util/Property;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformation:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 729
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 730
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformation:Lcom/nineoldandroids/animation/ObjectAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 731
    iget-object p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformation:Lcom/nineoldandroids/animation/ObjectAnimator;

    new-instance v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$2;

    invoke-direct {v0, p0}, Lcom/balysv/materialmenu/MaterialMenuDrawable$2;-><init>(Lcom/balysv/materialmenu/MaterialMenuDrawable;)V

    invoke-virtual {p1, v0}, Lcom/nineoldandroids/animation/Animator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private initPaint(I)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 247
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 248
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->strokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 249
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 252
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 253
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    iget-object p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->circlePaint:Landroid/graphics/Paint;

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 256
    iget p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    iget v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->height:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private isMorphingForward()Z
    .locals 2

    .line 558
    iget v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private resolveStrokeModifier(F)F
    .locals 3

    .line 562
    sget-object v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$3;->$SwitchMap$com$balysv$materialmenu$MaterialMenuDrawable$Stroke:[I

    iget-object v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->stroke:Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    sget-object v1, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->ARROW_X:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->X_CHECK:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 577
    :cond_1
    iget v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip4:F

    :goto_0
    mul-float p1, p1, v0

    return p1

    .line 575
    :cond_2
    :goto_1
    iget v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip4:F

    iget v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    iget v2, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip1:F

    add-float/2addr v1, v2

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    return v0

    .line 569
    :cond_3
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    sget-object v1, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->ARROW_X:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->X_CHECK:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    if-ne v0, v1, :cond_4

    goto :goto_2

    .line 572
    :cond_4
    iget v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    iget v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->diph:F

    add-float/2addr v0, v1

    goto :goto_0

    .line 570
    :cond_5
    :goto_2
    iget v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    iget v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->diph:F

    add-float v2, v0, v1

    add-float/2addr v0, v1

    mul-float v0, v0, p1

    sub-float/2addr v2, v0

    return v2

    .line 564
    :cond_6
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    sget-object v1, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->ARROW_X:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    if-eq v0, v1, :cond_8

    sget-object v1, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->X_CHECK:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    if-ne v0, v1, :cond_7

    goto :goto_3

    .line 567
    :cond_7
    iget v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    goto :goto_0

    .line 565
    :cond_8
    :goto_3
    iget v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->dip3:F

    mul-float p1, p1, v0

    sub-float/2addr v0, p1

    return v0
.end method

.method private resolveTransformation()Z
    .locals 11

    .line 740
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->currentIconState:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    sget-object v1, Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;->BURGER:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 741
    :goto_0
    sget-object v5, Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;->ARROW:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    if-ne v0, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 742
    :goto_1
    sget-object v7, Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;->X:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    if-ne v0, v7, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 743
    :goto_2
    sget-object v9, Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;->CHECK:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    if-ne v0, v9, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 744
    :goto_3
    iget-object v10, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animatingIconState:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    if-ne v10, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-ne v10, v5, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-ne v10, v7, :cond_6

    const/4 v7, 0x1

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    if-ne v10, v9, :cond_7

    const/4 v9, 0x1

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    :goto_7
    if-eqz v4, :cond_8

    if-nez v5, :cond_9

    :cond_8
    if-eqz v6, :cond_a

    if-eqz v1, :cond_a

    .line 750
    :cond_9
    sget-object v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->BURGER_ARROW:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    return v4

    :cond_a
    if-eqz v6, :cond_b

    if-nez v7, :cond_c

    :cond_b
    if-eqz v8, :cond_d

    if-eqz v5, :cond_d

    .line 755
    :cond_c
    sget-object v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->ARROW_X:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    return v6

    :cond_d
    if-eqz v4, :cond_e

    if-nez v7, :cond_f

    :cond_e
    if-eqz v8, :cond_10

    if-eqz v1, :cond_10

    .line 760
    :cond_f
    sget-object v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->BURGER_X:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    return v4

    :cond_10
    if-eqz v6, :cond_11

    if-nez v9, :cond_12

    :cond_11
    if-eqz v0, :cond_13

    if-eqz v5, :cond_13

    .line 765
    :cond_12
    sget-object v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->ARROW_CHECK:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    return v6

    :cond_13
    if-eqz v4, :cond_14

    if-nez v9, :cond_15

    :cond_14
    if-eqz v0, :cond_16

    if-eqz v1, :cond_16

    .line 770
    :cond_15
    sget-object v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->BURGER_CHECK:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    return v4

    :cond_16
    if-eqz v8, :cond_17

    if-nez v9, :cond_18

    :cond_17
    if-eqz v0, :cond_19

    if-eqz v7, :cond_19

    .line 775
    :cond_18
    sget-object v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->X_CHECK:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    return v8

    .line 779
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->currentIconState:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    iget-object v4, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animatingIconState:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    aput-object v4, v5, v3

    .line 780
    const-string v1, "Animating from %s to %s is not supported"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 264
    iget-boolean v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->visible:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    iget v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    sub-float v0, v2, v0

    .line 268
    :goto_0
    iget-boolean v2, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->rtlEnabled:Z

    if-eqz v2, :cond_2

    .line 269
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 270
    invoke-virtual {p1, v2, v1, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 271
    invoke-virtual {p0}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->getIntrinsicWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 274
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->drawTopLine(Landroid/graphics/Canvas;F)V

    .line 275
    invoke-direct {p0, p1, v0}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->drawMiddleLine(Landroid/graphics/Canvas;F)V

    .line 276
    invoke-direct {p0, p1, v0}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->drawBottomLine(Landroid/graphics/Canvas;F)V

    .line 278
    iget-boolean v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->rtlEnabled:Z

    if-eqz v0, :cond_3

    .line 279
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 827
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->materialMenuState:Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    invoke-static {v0, v1}, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->access$402(Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;I)I

    .line 828
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->materialMenuState:Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 821
    iget v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 816
    iget v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->width:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getTransformationValue()Ljava/lang/Float;
    .locals 1

    .line 719
    iget v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 811
    iget-boolean v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationRunning:Z

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 833
    new-instance v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;-><init>(Lcom/balysv/materialmenu/MaterialMenuDrawable;Lcom/balysv/materialmenu/MaterialMenuDrawable$1;)V

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->materialMenuState:Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;

    return-object p0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setIconState(Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;)V
    .locals 4

    .line 625
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 626
    :try_start_0
    iget-boolean v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationRunning:Z

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformation:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ValueAnimator;->cancel()V

    const/4 v1, 0x0

    .line 628
    iput-boolean v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationRunning:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 631
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->currentIconState:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    if-ne v1, p1, :cond_1

    monitor-exit v0

    return-void

    .line 633
    :cond_1
    sget-object v1, Lcom/balysv/materialmenu/MaterialMenuDrawable$3;->$SwitchMap$com$balysv$materialmenu$MaterialMenuDrawable$IconState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 647
    :cond_2
    sget-object v1, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->BURGER_CHECK:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    iput-object v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    .line 648
    iput v3, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationValue:F

    goto :goto_1

    .line 643
    :cond_3
    sget-object v1, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->BURGER_X:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    iput-object v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    .line 644
    iput v3, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationValue:F

    goto :goto_1

    .line 639
    :cond_4
    sget-object v1, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->BURGER_ARROW:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    iput-object v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    .line 640
    iput v3, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationValue:F

    goto :goto_1

    .line 635
    :cond_5
    sget-object v1, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->BURGER_ARROW:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    iput-object v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animationState:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    const/4 v1, 0x0

    .line 636
    iput v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationValue:F

    .line 650
    :goto_1
    iput-object p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->currentIconState:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    .line 651
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 652
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRTLEnabled(Z)V
    .locals 0

    .line 690
    iput-boolean p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->rtlEnabled:Z

    .line 691
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTransformationValue(Ljava/lang/Float;)V
    .locals 0

    .line 723
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationValue:F

    .line 724
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 685
    iput-boolean p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->visible:Z

    .line 686
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 6

    .line 785
    iget-boolean v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->animatingIconState:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->currentIconState:Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    .line 788
    iput-boolean v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationRunning:Z

    .line 790
    invoke-direct {p0}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->resolveTransformation()Z

    move-result v1

    .line 791
    iget-object v2, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformation:Lcom/nineoldandroids/animation/ObjectAnimator;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v5, 0x0

    aput v4, v1, v5

    aput v3, v1, v0

    invoke-virtual {v2, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    .line 795
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformation:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 798
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 802
    invoke-virtual {p0}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformation:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformation:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->end()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 805
    iput-boolean v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable;->transformationRunning:Z

    .line 806
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
