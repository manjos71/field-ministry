.class public Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private color:I

.field private colorRes:I

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private drawableRes:I

.field private title:Ljava/lang/String;

.field private titleRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x777778

    .line 22
    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->color:I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->titleRes:I

    .line 30
    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->colorRes:I

    .line 41
    iput-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->title:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->drawableRes:I

    return-void
.end method


# virtual methods
.method public getColor(Landroid/content/Context;)I
    .locals 1

    .line 112
    iget v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->colorRes:I

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    .line 115
    :cond_0
    iget p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->color:I

    return p1
.end method

.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 129
    iget v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->drawableRes:I

    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 133
    :catch_0
    iget v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->drawableRes:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 95
    iget v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->titleRes:I

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->title:Ljava/lang/String;

    return-object p1
.end method
