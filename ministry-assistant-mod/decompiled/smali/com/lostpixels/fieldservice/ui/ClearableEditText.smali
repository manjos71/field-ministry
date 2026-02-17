.class public Lcom/lostpixels/fieldservice/ui/ClearableEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# instance fields
.field public defaultValue:Ljava/lang/String;

.field final imgX:Landroid/graphics/drawable/Drawable;

.field private final mShowImeRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$msetImeVisibility(Lcom/lostpixels/fieldservice/ui/ClearableEditText;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/ClearableEditText;->setImeVisibility(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08011b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/ClearableEditText;->imgX:Landroid/graphics/drawable/Drawable;

    .line 19
    new-instance p1, Lcom/lostpixels/fieldservice/ui/ClearableEditText$1;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/ui/ClearableEditText$1;-><init>(Lcom/lostpixels/fieldservice/ui/ClearableEditText;)V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/ClearableEditText;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 29
    const-string p1, ""

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/ClearableEditText;->defaultValue:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/ClearableEditText;->init()V

    return-void
.end method

.method private setImeVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/ClearableEditText;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/ClearableEditText;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method addClearButton()V
    .locals 5

    .line 112
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 113
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/ClearableEditText;->imgX:Landroid/graphics/drawable/Drawable;

    .line 115
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    .line 112
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method init()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/ClearableEditText;->imgX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/ClearableEditText;->imgX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/ClearableEditText;->manageClearButton()V

    .line 59
    new-instance v0, Lcom/lostpixels/fieldservice/ui/ClearableEditText$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/ui/ClearableEditText$2;-><init>(Lcom/lostpixels/fieldservice/ui/ClearableEditText;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    new-instance v0, Lcom/lostpixels/fieldservice/ui/ClearableEditText$3;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/ui/ClearableEditText$3;-><init>(Lcom/lostpixels/fieldservice/ui/ClearableEditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    new-instance v0, Lcom/lostpixels/fieldservice/ui/ClearableEditText$4;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/ui/ClearableEditText$4;-><init>(Lcom/lostpixels/fieldservice/ui/ClearableEditText;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method manageClearButton()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/ClearableEditText;->removeClearButton()V

    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/ClearableEditText;->addClearButton()V

    return-void
.end method

.method removeClearButton()V
    .locals 4

    .line 119
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 120
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 122
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    .line 119
    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/appcompat/widget/AppCompatEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
