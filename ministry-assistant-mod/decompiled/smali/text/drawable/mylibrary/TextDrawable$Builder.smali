.class public Ltext/drawable/mylibrary/TextDrawable$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltext/drawable/mylibrary/TextDrawable$IShapeBuilder;
.implements Ltext/drawable/mylibrary/TextDrawable$IBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltext/drawable/mylibrary/TextDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private borderThickness:I

.field private color:I

.field private font:Landroid/graphics/Typeface;

.field private fontSize:I

.field private height:I

.field private isBold:Z

.field public radius:F

.field private shape:Landroid/graphics/drawable/shapes/RectShape;

.field private text:Ljava/lang/String;

.field public textColor:I

.field private toUpperCase:Z

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const-string v0, ""

    iput-object v0, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->text:Ljava/lang/String;

    const v0, -0x777778

    .line 164
    iput v0, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->color:I

    const/4 v0, -0x1

    .line 165
    iput v0, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->textColor:I

    const/4 v1, 0x0

    .line 166
    iput v1, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->borderThickness:I

    .line 167
    iput v0, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->width:I

    .line 168
    iput v0, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->height:I

    .line 169
    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v2, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    .line 170
    const-string v2, "sans-serif-light"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->font:Landroid/graphics/Typeface;

    .line 171
    iput v0, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->fontSize:I

    .line 172
    iput-boolean v1, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->isBold:Z

    .line 173
    iput-boolean v1, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->toUpperCase:Z

    return-void
.end method

.method synthetic constructor <init>(Ltext/drawable/mylibrary/TextDrawable$1;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ltext/drawable/mylibrary/TextDrawable$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltext/drawable/mylibrary/TextDrawable$Builder;)Landroid/graphics/drawable/shapes/RectShape;
    .locals 0

    .line 136
    iget-object p0, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    return-object p0
.end method

.method static synthetic access$100(Ltext/drawable/mylibrary/TextDrawable$Builder;)I
    .locals 0

    .line 136
    iget p0, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->height:I

    return p0
.end method

.method static synthetic access$200(Ltext/drawable/mylibrary/TextDrawable$Builder;)I
    .locals 0

    .line 136
    iget p0, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->width:I

    return p0
.end method

.method static synthetic access$300(Ltext/drawable/mylibrary/TextDrawable$Builder;)Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->toUpperCase:Z

    return p0
.end method

.method static synthetic access$400(Ltext/drawable/mylibrary/TextDrawable$Builder;)Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Ltext/drawable/mylibrary/TextDrawable$Builder;)I
    .locals 0

    .line 136
    iget p0, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->color:I

    return p0
.end method

.method static synthetic access$600(Ltext/drawable/mylibrary/TextDrawable$Builder;)I
    .locals 0

    .line 136
    iget p0, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->fontSize:I

    return p0
.end method

.method static synthetic access$700(Ltext/drawable/mylibrary/TextDrawable$Builder;)Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->isBold:Z

    return p0
.end method

.method static synthetic access$800(Ltext/drawable/mylibrary/TextDrawable$Builder;)Landroid/graphics/Typeface;
    .locals 0

    .line 136
    iget-object p0, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->font:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$900(Ltext/drawable/mylibrary/TextDrawable$Builder;)I
    .locals 0

    .line 136
    iget p0, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->borderThickness:I

    return p0
.end method


# virtual methods
.method public build(Ljava/lang/String;I)Ltext/drawable/mylibrary/TextDrawable;
    .locals 0

    .line 266
    iput p2, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->color:I

    .line 267
    iput-object p1, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->text:Ljava/lang/String;

    .line 268
    new-instance p1, Ltext/drawable/mylibrary/TextDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ltext/drawable/mylibrary/TextDrawable;-><init>(Ltext/drawable/mylibrary/TextDrawable$Builder;Ltext/drawable/mylibrary/TextDrawable$1;)V

    return-object p1
.end method

.method public buildRoundRect(Ljava/lang/String;II)Ltext/drawable/mylibrary/TextDrawable;
    .locals 0

    .line 254
    invoke-virtual {p0, p3}, Ltext/drawable/mylibrary/TextDrawable$Builder;->roundRect(I)Ltext/drawable/mylibrary/TextDrawable$IBuilder;

    .line 255
    invoke-virtual {p0, p1, p2}, Ltext/drawable/mylibrary/TextDrawable$Builder;->build(Ljava/lang/String;I)Ltext/drawable/mylibrary/TextDrawable;

    move-result-object p1

    return-object p1
.end method

.method public roundRect(I)Ltext/drawable/mylibrary/TextDrawable$IBuilder;
    .locals 2

    int-to-float p1, p1

    .line 240
    iput p1, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->radius:F

    const/16 v0, 0x8

    .line 241
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    .line 242
    new-instance p1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object p1, p0, Ltext/drawable/mylibrary/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    return-object p0
.end method
