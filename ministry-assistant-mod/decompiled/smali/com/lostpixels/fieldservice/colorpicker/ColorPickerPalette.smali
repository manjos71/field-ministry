.class public Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;
.super Landroid/widget/TableLayout;
.source "SourceFile"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mDescriptionSelected:Ljava/lang/String;

.field private mMarginSize:I

.field private mNumColumns:I

.field public mOnColorSelectedListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

.field private mSwatchLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private addSwatchToRow(Landroid/widget/TableRow;Landroid/view/View;I)V
    .locals 0

    .line 140
    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_0

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 143
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private createBlankSpace()Landroid/widget/ImageView;
    .locals 3

    .line 178
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 179
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    iget v2, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mSwatchLength:I

    invoke-direct {v1, v2, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 180
    iget v2, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mMarginSize:I

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createColorSwatch(II)Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch;
    .locals 3

    .line 189
    new-instance v0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-ne p1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mOnColorSelectedListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch;-><init>(Landroid/content/Context;IZLcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V

    .line 191
    new-instance p1, Landroid/widget/TableRow$LayoutParams;

    iget p2, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mSwatchLength:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p2, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 192
    iget p2, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mMarginSize:I

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 193
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createTableRow()Landroid/widget/TableRow;
    .locals 5

    .line 82
    new-instance v0, Landroid/widget/TableRow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private setSwatchDescription(IIIZLandroid/view/View;)V
    .locals 2

    .line 156
    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, v1

    .line 161
    iget p2, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mNumColumns:I

    mul-int p1, p1, p2

    sub-int p2, p1, p3

    :goto_0
    const/4 p1, 0x0

    if-eqz p4, :cond_1

    .line 167
    iget-object p3, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mDescriptionSelected:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p2, p4, p1

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 169
    :cond_1
    iget-object p3, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mDescription:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p2, p4, p1

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 171
    :goto_1
    invoke-virtual {p5, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public drawPalette([II)V
    .locals 10

    if-nez p1, :cond_0

    move-object v4, p0

    goto :goto_4

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 107
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->createTableRow()Landroid/widget/TableRow;

    move-result-object v0

    .line 108
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget v6, p1, v3

    const/4 v8, 0x1

    add-int/2addr v4, v8

    .line 111
    invoke-direct {p0, v6, p2}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->createColorSwatch(II)Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch;

    move-result-object v9

    if-ne v6, p2, :cond_1

    :goto_1
    move v6, v4

    move-object v4, p0

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 112
    :goto_2
    invoke-direct/range {v4 .. v9}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->setSwatchDescription(IIIZLandroid/view/View;)V

    .line 114
    invoke-direct {p0, v0, v9, v5}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->addSwatchToRow(Landroid/widget/TableRow;Landroid/view/View;I)V

    add-int/lit8 v7, v7, 0x1

    .line 117
    iget v8, v4, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mNumColumns:I

    if-ne v7, v8, :cond_2

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->createTableRow()Landroid/widget/TableRow;

    move-result-object v0

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_3
    move-object v4, p0

    if-lez v7, :cond_5

    .line 127
    :goto_3
    iget p1, v4, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mNumColumns:I

    if-eq v7, p1, :cond_4

    .line 128
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->createBlankSpace()Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, v0, p1, v5}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->addSwatchToRow(Landroid/widget/TableRow;Landroid/view/View;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 131
    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public init(IILcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V
    .locals 1

    .line 66
    iput p2, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mNumColumns:I

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 69
    sget p1, Lcom/lostpixels/fieldservice/colorpicker/R$dimen;->color_swatch_large:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mSwatchLength:I

    .line 70
    sget p1, Lcom/lostpixels/fieldservice/colorpicker/R$dimen;->color_swatch_margins_large:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mMarginSize:I

    goto :goto_0

    .line 72
    :cond_0
    sget p1, Lcom/lostpixels/fieldservice/colorpicker/R$dimen;->color_swatch_small:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mSwatchLength:I

    .line 73
    sget p1, Lcom/lostpixels/fieldservice/colorpicker/R$dimen;->color_swatch_margins_small:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mMarginSize:I

    .line 75
    :goto_0
    iput-object p3, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mOnColorSelectedListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    .line 77
    sget p1, Lcom/lostpixels/fieldservice/colorpicker/R$string;->color_swatch_description:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mDescription:Ljava/lang/String;

    .line 78
    sget p1, Lcom/lostpixels/fieldservice/colorpicker/R$string;->color_swatch_description_selected:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->mDescriptionSelected:Ljava/lang/String;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 58
    invoke-super {p0, p2, p2}, Landroid/widget/TableLayout;->onMeasure(II)V

    return-void
.end method
