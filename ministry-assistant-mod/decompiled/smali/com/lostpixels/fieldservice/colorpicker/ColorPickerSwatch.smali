.class public Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;
    }
.end annotation


# instance fields
.field private final mCheckmarkImage:Landroid/widget/ImageView;

.field private final mColor:I

.field private final mOnColorSelectedListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

.field private final mSwatchImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput p2, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch;->mColor:I

    .line 53
    iput-object p4, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch;->mOnColorSelectedListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p4, Lcom/lostpixels/fieldservice/colorpicker/R$layout;->calendar_color_picker_swatch:I

    invoke-virtual {p1, p4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    sget p1, Lcom/lostpixels/fieldservice/colorpicker/R$id;->color_picker_swatch:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch;->mSwatchImage:Landroid/widget/ImageView;

    .line 57
    sget p1, Lcom/lostpixels/fieldservice/colorpicker/R$id;->color_picker_checkmark:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch;->mCheckmarkImage:Landroid/widget/ImageView;

    .line 58
    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch;->setColor(I)V

    .line 59
    invoke-direct {p0, p3}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch;->setChecked(Z)V

    .line 60
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setChecked(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch;->mCheckmarkImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch;->mCheckmarkImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch;->mOnColorSelectedListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    if-eqz p1, :cond_0

    .line 80
    iget v0, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch;->mColor:I

    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;->onColorSelected(I)V

    :cond_0
    return-void
.end method

.method protected setColor(I)V
    .locals 3

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lostpixels/fieldservice/colorpicker/R$drawable;->calendar_color_picker_swatch:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 66
    iget-object v0, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch;->mSwatchImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/lostpixels/fieldservice/colorpicker/ColorStateDrawable;

    invoke-direct {v2, v1, p1}, Lcom/lostpixels/fieldservice/colorpicker/ColorStateDrawable;-><init>([Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
