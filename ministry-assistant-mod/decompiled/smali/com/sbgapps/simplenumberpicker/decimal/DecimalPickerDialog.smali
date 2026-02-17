.class public Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;
    }
.end annotation


# instance fields
.field private backspaceButton:Landroid/widget/ImageButton;

.field private dialog:Landroidx/appcompat/app/AlertDialog;

.field private initialValue:F

.field private natural:Z

.field private numberTextView:Landroid/widget/TextView;

.field private reference:I

.field private relative:Z

.field private theme:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->reference:I

    const/4 v1, 0x1

    .line 60
    iput-boolean v1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->relative:Z

    .line 61
    iput-boolean v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->natural:Z

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->initialValue:F

    .line 63
    sget v0, Lcom/sbgapps/simplenumberpicker/R$style;->SimpleNumberPickerTheme:I

    iput v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->theme:I

    return-void
.end method

.method static synthetic access$000(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->numberTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->onNumberChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->reference:I

    return p0
.end method

.method static synthetic access$300(IZZIF)Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;
    .locals 0

    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->newInstance(IZZIF)Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    move-result-object p0

    return-object p0
.end method

.method private assignArguments(Landroid/os/Bundle;)V
    .locals 2

    .line 286
    const-string v0, "ARG_REFERENCE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->reference:I

    .line 288
    :cond_0
    const-string v0, "ARG_RELATIVE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->relative:Z

    .line 290
    :cond_1
    const-string v0, "ARG_NATURAL"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->natural:Z

    .line 292
    :cond_2
    const-string v0, "ARG_THEME"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->theme:I

    .line 294
    :cond_3
    const-string v0, "ARG_SAVED_VALUE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 295
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->initialValue:F

    :cond_4
    return-void
.end method

.method private static newInstance(IZZIF)Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;
    .locals 2

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    const-string v1, "ARG_REFERENCE"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string p0, "ARG_RELATIVE"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    const-string p0, "ARG_NATURAL"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    const-string p0, "ARG_THEME"

    invoke-virtual {v0, p0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string p0, "ARG_SAVED_VALUE"

    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 72
    new-instance p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-direct {p0}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;-><init>()V

    .line 73
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private onNumberChanged()V
    .locals 5

    .line 299
    iget-object v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->backspaceButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 300
    iget-object v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->numberTextView:Landroid/widget/TextView;

    .line 303
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v4, v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->assignArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->assignArguments(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 97
    iget v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->theme:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    const/4 p1, 0x0

    .line 98
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->theme:I

    sget-object v2, Lcom/sbgapps/simplenumberpicker/R$styleable;->SimpleNumberPicker:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 114
    sget v2, Lcom/sbgapps/simplenumberpicker/R$layout;->snp_dialog_decimal_picker:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 117
    sget v2, Lcom/sbgapps/simplenumberpicker/R$styleable;->SimpleNumberPicker_snpKeyColor:I

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1060007

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 117
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 119
    sget v5, Lcom/sbgapps/simplenumberpicker/R$id;->tv_hex_number:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->numberTextView:Landroid/widget/TextView;

    .line 120
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v3, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->numberTextView:Landroid/widget/TextView;

    const-string v5, "hh:mm"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 122
    const-string v3, "ARG_SAVED_VALUE"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    iget-object v5, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_0
    sget p1, Lcom/sbgapps/simplenumberpicker/R$styleable;->SimpleNumberPicker_snpBackspaceColor:I

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 126
    invoke-virtual {v0, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 128
    sget v3, Lcom/sbgapps/simplenumberpicker/R$id;->key_backspace:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->backspaceButton:Landroid/widget/ImageButton;

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/sbgapps/simplenumberpicker/R$drawable;->snp_ic_backspace_black_24dp:I

    invoke-static {v4, v5, p1}, Lcom/sbgapps/simplenumberpicker/utils/ThemeUtil;->makeSelector(Landroid/content/Context;II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    .line 129
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->backspaceButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$1;

    invoke-direct {v3, p0}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$1;-><init>(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->backspaceButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$2;

    invoke-direct {v3, p0}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$2;-><init>(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 151
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->theme:I

    invoke-direct {p1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 152
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v3, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$4;

    invoke-direct {v3, p0}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$4;-><init>(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)V

    const v4, 0x104000a

    .line 153
    invoke-virtual {p1, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v3, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$3;

    invoke-direct {v3, p0}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$3;-><init>(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)V

    const/high16 v4, 0x1040000

    .line 177
    invoke-virtual {p1, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 186
    sget p1, Lcom/sbgapps/simplenumberpicker/R$styleable;->SimpleNumberPicker_snpDialogBackground:I

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x106000b

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 186
    invoke-virtual {v0, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 188
    iget-object v3, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sbgapps/simplenumberpicker/utils/ThemeUtil;->getThemeAccentColor(Landroid/content/Context;)I

    move-result p1

    .line 192
    invoke-virtual {v0, v2, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sbgapps/simplenumberpicker/R$array;->snp_key_ids:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xa

    const/4 v5, -0x1

    if-ge v3, v4, :cond_1

    .line 197
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 198
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 199
    new-instance v5, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$5;

    invoke-direct {v5, p0}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$5;-><init>(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 220
    :cond_1
    sget v3, Lcom/sbgapps/simplenumberpicker/R$id;->key_sign:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 221
    iget-boolean v4, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->relative:Z

    const/4 v6, 0x4

    if-eqz v4, :cond_2

    .line 222
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    new-instance v4, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$6;

    invoke-direct {v4, p0}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$6;-><init>(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 236
    :cond_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 240
    :goto_1
    sget v3, Lcom/sbgapps/simplenumberpicker/R$id;->key_point:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 241
    iget-boolean v3, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->natural:Z

    if-eqz v3, :cond_3

    .line 242
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 244
    :cond_3
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    new-instance p1, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$7;

    invoke-direct {p1, p0}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$7;-><init>(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    :goto_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    iget p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->initialValue:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_6

    .line 261
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    const-string v1, ":"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 264
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":00"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 266
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_5

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 269
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_6
    iget-object p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public onResume()V
    .locals 4

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x437a0000    # 250.0f

    .line 81
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 277
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 278
    const-string v0, "ARG_REFERENCE"

    iget v1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->reference:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 279
    const-string v0, "ARG_RELATIVE"

    iget-boolean v1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->relative:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    const-string v0, "ARG_NATURAL"

    iget-boolean v1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->natural:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 281
    const-string v0, "ARG_THEME"

    iget v1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->theme:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 282
    iget-object v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ARG_SAVED_VALUE"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 103
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 104
    invoke-direct {p0}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->onNumberChanged()V

    return-void
.end method
