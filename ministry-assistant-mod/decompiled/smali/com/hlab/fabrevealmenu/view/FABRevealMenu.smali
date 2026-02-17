.class public Lcom/hlab/fabrevealmenu/view/FABRevealMenu;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final CONST_DELAY:I

.field private FAB_CURRENT_STATE:I

.field private final FAB_STATE_COLLAPSED:I

.field private final FAB_STATE_EXPANDED:I

.field private animateItems:Z

.field private animationHelper:Lcom/hlab/fabrevealmenu/helper/AnimationHelper;

.field private mBaseView:Landroidx/cardview/widget/CardView;

.field private mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mDirection:Lcom/hlab/fabrevealmenu/enums/Direction;

.field private mEnableNestedScrolling:Z

.field private mFab:Landroid/view/View;

.field private mMenuBackground:I

.field private mMenuRes:I

.field private mMenuView:Landroidx/recyclerview/widget/RecyclerView;

.field private mOverlayBackground:I

.field private mOverlayLayout:Landroid/widget/FrameLayout;

.field private mRevealView:Lio/codetail/widget/RevealLinearLayout;

.field private mShowOverlay:Z

.field private mShowTitle:Z

.field private mTitleDisabledTextColor:I

.field private mTitleTextColor:I

.field private menuAdapter:Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

.field private menuList:Ljava/util/ArrayList;

.field public menuSelectedListener:Lcom/hlab/fabrevealmenu/listeners/OnFABMenuSelectedListener;

.field private viewHelper:Lcom/hlab/fabrevealmenu/helper/ViewHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->FAB_STATE_COLLAPSED:I

    const/4 v1, 0x1

    .line 60
    iput v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->FAB_STATE_EXPANDED:I

    .line 61
    iput v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->FAB_CURRENT_STATE:I

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mOverlayLayout:Landroid/widget/FrameLayout;

    .line 66
    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mRevealView:Lio/codetail/widget/RevealLinearLayout;

    .line 67
    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mMenuView:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    iput-boolean v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mEnableNestedScrolling:Z

    .line 69
    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mBaseView:Landroidx/cardview/widget/CardView;

    .line 70
    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuAdapter:Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    .line 73
    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuList:Ljava/util/ArrayList;

    .line 74
    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuSelectedListener:Lcom/hlab/fabrevealmenu/listeners/OnFABMenuSelectedListener;

    const/16 v0, 0x2bc

    .line 82
    iput v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->CONST_DELAY:I

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Landroidx/cardview/widget/CardView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mBaseView:Landroidx/cardview/widget/CardView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/enums/Direction;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mDirection:Lcom/hlab/fabrevealmenu/enums/Direction;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/helper/AnimationHelper;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->animationHelper:Lcom/hlab/fabrevealmenu/helper/AnimationHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Landroid/view/View;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mFab:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lio/codetail/widget/RevealLinearLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mRevealView:Lio/codetail/widget/RevealLinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/helper/ViewHelper;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->viewHelper:Lcom/hlab/fabrevealmenu/helper/ViewHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuAdapter:Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)Landroid/widget/FrameLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mOverlayLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->recreateView()V

    return-void
.end method

.method private getColor(I)I
    .locals 2

    .line 446
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 447
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    return p1

    .line 449
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    return p1
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 100
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mContext:Landroid/content/Context;

    .line 103
    new-instance v0, Lcom/hlab/fabrevealmenu/helper/ViewHelper;

    invoke-direct {v0, p1}, Lcom/hlab/fabrevealmenu/helper/ViewHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->viewHelper:Lcom/hlab/fabrevealmenu/helper/ViewHelper;

    .line 104
    new-instance v1, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;

    invoke-direct {v1, v0}, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;-><init>(Lcom/hlab/fabrevealmenu/helper/ViewHelper;)V

    iput-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->animationHelper:Lcom/hlab/fabrevealmenu/helper/AnimationHelper;

    if-eqz p2, :cond_2

    .line 107
    sget-object v0, Lcom/hlab/fabrevealmenu/R$styleable;->FABRevealMenu:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 110
    sget v0, Lcom/hlab/fabrevealmenu/R$styleable;->FABRevealMenu_menuBackgroundColor:I

    sget v2, Lcom/hlab/fabrevealmenu/R$color;->colorWhite:I

    invoke-direct {p0, v2}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mMenuBackground:I

    .line 111
    sget v0, Lcom/hlab/fabrevealmenu/R$styleable;->FABRevealMenu_overlayBackground:I

    sget v2, Lcom/hlab/fabrevealmenu/R$color;->colorOverlayDark:I

    invoke-direct {p0, v2}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mOverlayBackground:I

    .line 114
    sget v0, Lcom/hlab/fabrevealmenu/R$styleable;->FABRevealMenu_menuRes:I

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mMenuRes:I

    .line 117
    sget v0, Lcom/hlab/fabrevealmenu/R$styleable;->FABRevealMenu_menuCustomView:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 119
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mCustomView:Landroid/view/View;

    .line 123
    :cond_0
    sget p1, Lcom/hlab/fabrevealmenu/R$styleable;->FABRevealMenu_menuDirection:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Lcom/hlab/fabrevealmenu/enums/Direction;->fromId(I)Lcom/hlab/fabrevealmenu/enums/Direction;

    move-result-object p1

    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mDirection:Lcom/hlab/fabrevealmenu/enums/Direction;

    .line 126
    sget p1, Lcom/hlab/fabrevealmenu/R$styleable;->FABRevealMenu_menuTitleTextColor:I

    const v0, 0x106000b

    invoke-direct {p0, v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mTitleTextColor:I

    .line 127
    sget p1, Lcom/hlab/fabrevealmenu/R$styleable;->FABRevealMenu_menuTitleDisabledTextColor:I

    const/high16 v0, 0x1060000

    invoke-direct {p0, v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mTitleDisabledTextColor:I

    .line 128
    sget p1, Lcom/hlab/fabrevealmenu/R$styleable;->FABRevealMenu_showTitle:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mShowTitle:Z

    .line 129
    sget p1, Lcom/hlab/fabrevealmenu/R$styleable;->FABRevealMenu_showOverlay:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mShowOverlay:Z

    .line 132
    sget p1, Lcom/hlab/fabrevealmenu/R$styleable;->FABRevealMenu_animateItems:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->animateItems:Z

    .line 134
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    iget p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mMenuRes:I

    if-eq p1, v2, :cond_1

    .line 138
    invoke-virtual {p0, p1}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->setMenu(I)V

    return-void

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {p0, p1}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->setCustomView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private recreateView()V
    .locals 2

    .line 437
    iget v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mMenuRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->updateMenu()V

    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 440
    invoke-virtual {p0, v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->setCustomView(Landroid/view/View;)V

    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 442
    invoke-virtual {p0, v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->setMenuItems(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private setUpMenu(Landroid/view/Menu;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuList:Ljava/util/ArrayList;

    .line 211
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 213
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 214
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 215
    iget-object v2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuList:Ljava/util/ArrayList;

    new-instance v3, Lcom/hlab/fabrevealmenu/model/FABMenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1}, Lcom/hlab/fabrevealmenu/model/FABMenuItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->setUpMenuView()V

    return-void

    .line 219
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Menu resource not found."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setUpMenuView()V
    .locals 12

    .line 223
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->viewHelper:Lcom/hlab/fabrevealmenu/helper/ViewHelper;

    iget-boolean v2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mEnableNestedScrolling:Z

    invoke-virtual {v0, v2}, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->generateMenuView(Z)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mMenuView:Landroidx/recyclerview/widget/RecyclerView;

    .line 228
    iget-object v2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mDirection:Lcom/hlab/fabrevealmenu/enums/Direction;

    sget-object v3, Lcom/hlab/fabrevealmenu/enums/Direction;->LEFT:Lcom/hlab/fabrevealmenu/enums/Direction;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/hlab/fabrevealmenu/enums/Direction;->RIGHT:Lcom/hlab/fabrevealmenu/enums/Direction;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    iget-boolean v2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mShowTitle:Z

    xor-int/lit8 v4, v2, 0x1

    .line 233
    new-instance v2, Lcom/hlab/fabrevealmenu/view/DynamicGridLayoutManager;

    iget-object v3, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v11, v11}, Lcom/hlab/fabrevealmenu/view/DynamicGridLayoutManager;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 234
    new-instance v0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    iget-object v2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuList:Ljava/util/ArrayList;

    sget v3, Lcom/hlab/fabrevealmenu/R$layout;->row_vertical_menu_item:I

    iget v5, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mTitleTextColor:I

    iget v6, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mTitleDisabledTextColor:I

    iget-boolean v7, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mShowTitle:Z

    iget-object v8, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mDirection:Lcom/hlab/fabrevealmenu/enums/Direction;

    iget-boolean v9, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->animateItems:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;-><init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;Ljava/util/List;IZIIZLcom/hlab/fabrevealmenu/enums/Direction;Z)V

    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuAdapter:Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    goto :goto_1

    .line 229
    :cond_1
    :goto_0
    new-instance v2, Lcom/hlab/fabrevealmenu/view/DynamicGridLayoutManager;

    iget-object v3, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/hlab/fabrevealmenu/R$dimen;->column_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/hlab/fabrevealmenu/view/DynamicGridLayoutManager;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 230
    new-instance v0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    iget-object v2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuList:Ljava/util/ArrayList;

    sget v3, Lcom/hlab/fabrevealmenu/R$layout;->row_horizontal_menu_item:I

    iget v5, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mTitleTextColor:I

    iget v6, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mTitleDisabledTextColor:I

    iget-boolean v7, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mShowTitle:Z

    iget-object v8, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mDirection:Lcom/hlab/fabrevealmenu/enums/Direction;

    iget-boolean v9, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->animateItems:Z

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;-><init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;Ljava/util/List;IZIIZLcom/hlab/fabrevealmenu/enums/Direction;Z)V

    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuAdapter:Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    const/4 v4, 0x0

    .line 236
    :goto_1
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mMenuView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuAdapter:Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 238
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mMenuView:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mShowTitle:Z

    if-eqz v2, :cond_2

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    invoke-direct {p0, v0, v10}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->setUpView(Landroid/view/View;Z)V

    :cond_3
    return-void
.end method

.method private setUpView(Landroid/view/View;Z)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->viewHelper:Lcom/hlab/fabrevealmenu/helper/ViewHelper;

    invoke-virtual {v0}, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->generateBaseView()Landroidx/cardview/widget/CardView;

    move-result-object v0

    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mBaseView:Landroidx/cardview/widget/CardView;

    .line 244
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->viewHelper:Lcom/hlab/fabrevealmenu/helper/ViewHelper;

    invoke-virtual {v0}, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->generateRevealView()Lio/codetail/widget/RevealLinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mRevealView:Lio/codetail/widget/RevealLinearLayout;

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mOverlayLayout:Landroid/widget/FrameLayout;

    .line 246
    iget-boolean v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mShowOverlay:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->viewHelper:Lcom/hlab/fabrevealmenu/helper/ViewHelper;

    invoke-virtual {v0}, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->generateOverlayView()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mOverlayLayout:Landroid/widget/FrameLayout;

    .line 248
    iget v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mOverlayBackground:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mBaseView:Landroidx/cardview/widget/CardView;

    iget v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mMenuBackground:I

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    if-eqz p2, :cond_1

    .line 254
    iget-object p2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mBaseView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/hlab/fabrevealmenu/R$dimen;->menu_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/cardview/widget/CardView;->setMinimumWidth(I)V

    .line 256
    :cond_1
    iget-object p2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mBaseView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 258
    iget-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mRevealView:Lio/codetail/widget/RevealLinearLayout;

    iget-object p2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mBaseView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 260
    iget-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mOverlayLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    .line 261
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 264
    :cond_2
    iget-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mRevealView:Lio/codetail/widget/RevealLinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 266
    iget-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mRevealView:Lio/codetail/widget/RevealLinearLayout;

    new-instance p2, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$1;

    invoke-direct {p2, p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$1;-><init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 273
    iget-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mOverlayLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    .line 274
    new-instance p2, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$2;

    invoke-direct {p2, p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$2;-><init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public bindAncherView(Landroid/view/View;)V
    .locals 1

    .line 285
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mFab:Landroid/view/View;

    .line 286
    new-instance v0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;

    invoke-direct {v0, p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$3;-><init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public closeMenu()V
    .locals 7

    .line 394
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mFab:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 399
    iget v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->FAB_CURRENT_STATE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 400
    iput v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->FAB_CURRENT_STATE:I

    .line 403
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mBaseView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mBaseView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 404
    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->animationHelper:Lcom/hlab/fabrevealmenu/helper/AnimationHelper;

    iget-object v2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mBaseView:Landroidx/cardview/widget/CardView;

    int-to-float v3, v0

    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mFab:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    new-instance v6, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$6;

    invoke-direct {v6, p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$6;-><init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)V

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->revealMenu(Landroid/view/View;FFZLcom/hlab/fabrevealmenu/listeners/AnimationListener;)V

    .line 422
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7;

    invoke-direct {v1, p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$7;-><init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    .line 395
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FloatingActionButton not bound.Please, use bindAncherView() to add your Fab button."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getMenuDirection()Lcom/hlab/fabrevealmenu/enums/Direction;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mDirection:Lcom/hlab/fabrevealmenu/enums/Direction;

    return-object v0
.end method

.method public isShowing()Z
    .locals 2

    .line 345
    iget v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->FAB_CURRENT_STATE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 150
    iput v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mMenuRes:I

    .line 151
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 152
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mCustomView:Landroid/view/View;

    const/4 v0, 0x1

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 154
    iget-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->viewHelper:Lcom/hlab/fabrevealmenu/helper/ViewHelper;

    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->setLayoutParams(Landroid/view/View;)V

    .line 155
    iget-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mCustomView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->setUpView(Landroid/view/View;Z)V

    return-void
.end method

.method public setMenu(I)V
    .locals 3

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mCustomView:Landroid/view/View;

    .line 169
    iput p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mMenuRes:I

    .line 170
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 171
    new-instance v0, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 172
    new-instance v1, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 173
    invoke-direct {p0, v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->setUpMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public setMenuBackground(I)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mBaseView:Landroidx/cardview/widget/CardView;

    invoke-direct {p0, p1}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-void
.end method

.method public setMenuDirection(Lcom/hlab/fabrevealmenu/enums/Direction;)V
    .locals 3

    .line 520
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mDirection:Lcom/hlab/fabrevealmenu/enums/Direction;

    .line 521
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuAdapter:Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0, p1}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->setDirection(Lcom/hlab/fabrevealmenu/enums/Direction;)V

    .line 523
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$10;

    invoke-direct {v0, p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$10;-><init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setMenuItems(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/hlab/fabrevealmenu/model/FABMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 188
    iput v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mMenuRes:I

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mCustomView:Landroid/view/View;

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->animateItems:Z

    if-eqz p1, :cond_2

    .line 193
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 195
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 196
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 197
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hlab/fabrevealmenu/model/FABMenuItem;

    .line 198
    invoke-virtual {v1, v0}, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->setId(I)V

    .line 199
    invoke-virtual {v1}, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->setUpMenuView()V

    return-void

    .line 192
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null items are not allowed."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMenuTitleDisabledTextColor(I)V
    .locals 1

    .line 509
    iput p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mTitleDisabledTextColor:I

    .line 510
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuAdapter:Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0, p1}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->setTitleDisabledTextColor(I)V

    :cond_0
    return-void
.end method

.method public setMenuTitleTextColor(I)V
    .locals 1

    .line 502
    iput p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mTitleTextColor:I

    .line 503
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuAdapter:Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0, p1}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->setTitleTextColor(I)V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mEnableNestedScrolling:Z

    return-void
.end method

.method public setOnFABMenuSelectedListener(Lcom/hlab/fabrevealmenu/listeners/OnFABMenuSelectedListener;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuSelectedListener:Lcom/hlab/fabrevealmenu/listeners/OnFABMenuSelectedListener;

    return-void
.end method

.method public setOnMenuStateChangedListener(Lcom/hlab/fabrevealmenu/listeners/OnMenuStateChangedListener;)V
    .locals 0

    return-void
.end method

.method public setOverlayBackground(I)V
    .locals 1

    .line 456
    iput p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mOverlayBackground:I

    .line 457
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mOverlayLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 458
    invoke-direct {p0, p1}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 460
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Overlay view is not initialized/ set ShowOverlay to true"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowOverlay(Z)V
    .locals 3

    .line 472
    iput-boolean p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mShowOverlay:Z

    .line 473
    invoke-virtual {p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->closeMenu()V

    .line 474
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$8;

    invoke-direct {v0, p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$8;-><init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setTitleVisible(Z)V
    .locals 3

    .line 484
    iput-boolean p1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mShowTitle:Z

    .line 485
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuAdapter:Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 486
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mDirection:Lcom/hlab/fabrevealmenu/enums/Direction;

    sget-object v1, Lcom/hlab/fabrevealmenu/enums/Direction;->UP:Lcom/hlab/fabrevealmenu/enums/Direction;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/hlab/fabrevealmenu/enums/Direction;->DOWN:Lcom/hlab/fabrevealmenu/enums/Direction;

    if-ne v0, v1, :cond_1

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mBaseView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/hlab/fabrevealmenu/R$dimen;->menu_min_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setMinimumWidth(I)V

    goto :goto_0

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mBaseView:Landroidx/cardview/widget/CardView;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setMinimumWidth(I)V

    .line 490
    :goto_0
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuAdapter:Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->setShowTitle(Z)V

    .line 491
    invoke-virtual {p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->closeMenu()V

    .line 492
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$9;

    invoke-direct {v0, p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$9;-><init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public showMenu()V
    .locals 7

    .line 350
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mFab:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->animationHelper:Lcom/hlab/fabrevealmenu/helper/AnimationHelper;

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mBaseView:Landroidx/cardview/widget/CardView;

    iget-object v2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mDirection:Lcom/hlab/fabrevealmenu/enums/Direction;

    invoke-virtual {v0, v1, v2}, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->calculateCenterPoints(Landroid/view/View;Lcom/hlab/fabrevealmenu/enums/Direction;)V

    .line 356
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->viewHelper:Lcom/hlab/fabrevealmenu/helper/ViewHelper;

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mFab:Landroid/view/View;

    iget-object v2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mRevealView:Lio/codetail/widget/RevealLinearLayout;

    iget-object v3, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mDirection:Lcom/hlab/fabrevealmenu/enums/Direction;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hlab/fabrevealmenu/helper/ViewHelper;->alignMenuWithFab(Landroid/view/View;Landroid/view/View;Lcom/hlab/fabrevealmenu/enums/Direction;)V

    .line 358
    iget v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->FAB_CURRENT_STATE:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 359
    iput v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->FAB_CURRENT_STATE:I

    .line 362
    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->animationHelper:Lcom/hlab/fabrevealmenu/helper/AnimationHelper;

    iget-object v2, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mFab:Landroid/view/View;

    iget-object v3, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mRevealView:Lio/codetail/widget/RevealLinearLayout;

    iget-object v4, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mDirection:Lcom/hlab/fabrevealmenu/enums/Direction;

    new-instance v6, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$4;

    invoke-direct {v6, p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$4;-><init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)V

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/hlab/fabrevealmenu/helper/AnimationHelper;->moveFab(Landroid/view/View;Landroid/view/View;Lcom/hlab/fabrevealmenu/enums/Direction;ZLcom/hlab/fabrevealmenu/listeners/AnimationListener;)V

    .line 370
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;

    invoke-direct {v1, p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu$5;-><init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;)V

    const-wide/16 v2, 0x4b

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    .line 351
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FloatingActionButton not bound.Please, use bindAncherView() to add your Fab button."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateMenu()V
    .locals 1

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mCustomView:Landroid/view/View;

    .line 178
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 179
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->setUpMenuView()V

    return-void

    .line 182
    :cond_0
    iget v0, p0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->mMenuRes:I

    invoke-virtual {p0, v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->setMenu(I)V

    return-void
.end method
