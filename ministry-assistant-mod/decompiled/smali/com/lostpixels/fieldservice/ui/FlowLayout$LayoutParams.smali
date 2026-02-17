.class public Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/ui/FlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private horizontalSpacing:I

.field private newLine:Z

.field private verticalSpacing:I

.field private x:I

.field private y:I


# direct methods
.method static bridge synthetic -$$Nest$fgethorizontalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->horizontalSpacing:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnewLine(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->newLine:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetverticalSpacing(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->verticalSpacing:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetx(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->x:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgety(Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->y:I

    return p0
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 301
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 291
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 292
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->verticalSpacing:I

    const/4 p1, 0x0

    .line 293
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->newLine:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 296
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 291
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 292
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->verticalSpacing:I

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->newLine:Z

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 291
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 292
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->verticalSpacing:I

    const/4 p1, 0x0

    .line 293
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->newLine:Z

    return-void
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 322
    sget-object v0, Lcom/lostpixels/fieldservice/R$styleable;->FlowLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    .line 324
    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->horizontalSpacing:I

    const/4 v1, 0x2

    .line 325
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->verticalSpacing:I

    const/4 p2, 0x1

    .line 326
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->newLine:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 329
    throw p2
.end method


# virtual methods
.method public horizontalSpacingSpecified()Z
    .locals 2

    .line 309
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->horizontalSpacing:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPosition(II)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->x:I

    .line 318
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->y:I

    return-void
.end method

.method public verticalSpacingSpecified()Z
    .locals 2

    .line 313
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/FlowLayout$LayoutParams;->verticalSpacing:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
