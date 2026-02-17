.class public Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;
.super Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
.source "SourceFile"


# instance fields
.field public defaultValue:Ljava/lang/String;

.field final imgX:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08011b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;->imgX:Landroid/graphics/drawable/Drawable;

    .line 18
    const-string p1, ""

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;->defaultValue:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;->init()V

    return-void
.end method


# virtual methods
.method addClearButton()V
    .locals 5

    .line 88
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 89
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;->imgX:Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    .line 88
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method init()V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;->imgX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;->imgX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 42
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;->manageClearButton()V

    .line 44
    new-instance v0, Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView$1;-><init>(Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    new-instance v0, Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView$2;-><init>(Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method manageClearButton()V
    .locals 2

    .line 81
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;->removeClearButton()V

    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;->addClearButton()V

    return-void
.end method

.method removeClearButton()V
    .locals 4

    .line 95
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 96
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 98
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    .line 95
    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
