.class public Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;


# instance fields
.field protected mAlertDialog:Landroid/app/AlertDialog;

.field protected mColors:[I

.field protected mColumns:I

.field protected mListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

.field private mPalette:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;

.field private mProgress:Landroid/widget/ProgressBar;

.field protected mSelectedColor:I

.field protected mSize:I

.field protected mTitleResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 52
    sget v0, Lcom/lostpixels/fieldservice/colorpicker/R$string;->color_picker_default_title:I

    iput v0, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mTitleResId:I

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mColors:[I

    return-void
.end method

.method public static newInstance(I[IIII)Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;
    .locals 6

    .line 69
    new-instance v0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;-><init>()V

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 70
    invoke-virtual/range {v0 .. v5}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->initialize(I[IIII)V

    return-object v0
.end method

.method private refreshPalette()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mPalette:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mColors:[I

    if-eqz v1, :cond_0

    .line 188
    iget v2, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mSelectedColor:I

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->drawPalette([II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initialize(I[IIII)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1, p4, p5}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->setArguments(III)V

    .line 76
    invoke-virtual {p0, p2, p3}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->setColors([II)V

    return-void
.end method

.method public onColorSelected(I)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0, p1}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;->onColorSelected(I)V

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    .line 137
    invoke-interface {v0, p1}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;->onColorSelected(I)V

    .line 140
    :cond_1
    iget v0, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mSelectedColor:I

    if-eq p1, v0, :cond_2

    .line 141
    iput p1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mSelectedColor:I

    .line 143
    iget-object v0, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mPalette:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mColors:[I

    invoke-virtual {v0, v1, p1}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->drawPalette([II)V

    .line 146
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title_id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mTitleResId:I

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "columns"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mColumns:I

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mSize:I

    :cond_0
    if-eqz p1, :cond_1

    .line 102
    const-string v0, "colors"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mColors:[I

    .line 103
    const-string v0, "selected_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mSelectedColor:I

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/lostpixels/fieldservice/colorpicker/R$layout;->calendar_color_picker_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000d

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 113
    sget v1, Lcom/lostpixels/fieldservice/colorpicker/R$id;->color_picker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mPalette:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;

    .line 114
    iget v2, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mSize:I

    iget v3, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mColumns:I

    invoke-virtual {v1, v2, v3, p0}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;->init(IILcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V

    .line 116
    iget-object v1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mColors:[I

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->showPaletteView()V

    .line 120
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget p1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mTitleResId:I

    .line 121
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 122
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 202
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 203
    const-string v0, "colors"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mColors:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 204
    iget v0, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mSelectedColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "selected_color"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setArguments(III)V
    .locals 2

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    const-string v1, "title_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 82
    const-string p1, "columns"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 83
    const-string p1, "size"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public setColors([II)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mColors:[I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mSelectedColor:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 166
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mColors:[I

    .line 167
    iput p2, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mSelectedColor:I

    .line 168
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->refreshPalette()V

    return-void
.end method

.method public setOnColorSelectedListener(Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    return-void
.end method

.method public showPaletteView()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mPalette:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->refreshPalette()V

    .line 153
    iget-object v0, p0, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->mPalette:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerPalette;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
