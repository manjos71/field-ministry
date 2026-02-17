.class public Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnNavigationPositionListener;,
        Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnTabSelectedListener;,
        Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "AHBottomNavigation"


# instance fields
.field private backgroundColorView:Landroid/view/View;

.field private behaviorTranslationEnabled:Z

.field private bottomNavigationBehavior:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;

.field private bottomNavigationHeight:I

.field private circleRevealAnim:Landroid/animation/Animator;

.field private colored:Z

.field private coloredTitleColorActive:I

.field private coloredTitleColorInactive:I

.field private context:Landroid/content/Context;

.field private currentColor:I

.field private currentItem:I

.field private defaultBackgroundColor:I

.field private defaultBackgroundResource:I

.field private forceTint:Z

.field private hideBottomNavigationWithAnimation:Z

.field private isBehaviorTranslationSet:Z

.field private itemActiveColor:I

.field private itemDisableColor:I

.field private itemInactiveColor:I

.field private items:Ljava/util/ArrayList;

.field private itemsEnabledStates:[Ljava/lang/Boolean;

.field private linearLayoutContainer:Landroid/widget/LinearLayout;

.field private navigationBarHeight:I

.field private needHideBottomNavigation:Z

.field private notSelectedItemWidth:F

.field private notificationActiveMarginLeft:I

.field private notificationActiveMarginTop:I

.field private notificationAnimationDuration:J

.field private notificationBackgroundColor:I

.field private notificationBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private notificationInactiveMarginLeft:I

.field private notificationInactiveMarginTop:I

.field private notificationTextColor:I

.field private notificationTypeface:Landroid/graphics/Typeface;

.field private notifications:Ljava/util/List;

.field private resources:Landroid/content/res/Resources;

.field private selectedBackgroundVisible:Z

.field private selectedItemWidth:F

.field private soundEffectsEnabled:Z

.field private tabSelectedListener:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnTabSelectedListener;

.field private titleActiveTextSize:F

.field private titleColorActive:I

.field private titleColorInactive:I

.field private titleInactiveTextSize:F

.field private titleState:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

.field private titleTypeface:Landroid/graphics/Typeface;

.field private translucentNavigationEnabled:Z

.field private views:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->views:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->colored:Z

    .line 86
    iput-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->selectedBackgroundVisible:Z

    const/4 v1, 0x5

    .line 88
    invoke-static {v1}, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->generateEmptyList(I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notifications:Ljava/util/List;

    .line 89
    new-array v1, v1, [Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v0

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemsEnabledStates:[Ljava/lang/Boolean;

    .line 90
    iput-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->isBehaviorTranslationSet:Z

    .line 91
    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    .line 92
    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentColor:I

    .line 93
    iput-boolean v3, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->behaviorTranslationEnabled:Z

    .line 94
    iput-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->needHideBottomNavigation:Z

    .line 95
    iput-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->hideBottomNavigationWithAnimation:Z

    .line 96
    iput-boolean v3, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->soundEffectsEnabled:Z

    const/4 v1, -0x1

    .line 100
    iput v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->defaultBackgroundColor:I

    .line 101
    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->defaultBackgroundResource:I

    .line 110
    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->navigationBarHeight:I

    .line 112
    iput-boolean v3, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    .line 113
    sget-object v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->SHOW_WHEN_ACTIVE:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    iput-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleState:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;IZ)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->updateItems(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;IZ)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->updateSmallItems(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->backgroundColorView:Landroid/view/View;

    return-object p0
.end method

.method private calculateHeight(I)I
    .locals 4

    .line 299
    iget-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->translucentNavigationEnabled:Z

    if-nez v0, :cond_0

    return p1

    .line 301
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "navigation_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 303
    iget-object v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->navigationBarHeight:I

    :cond_1
    const v0, 0x10100dd

    const v1, 0x10103f0

    .line 306
    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 307
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 310
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    const/4 v1, 0x1

    .line 313
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 315
    invoke-virtual {p0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->hasImmersive()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 316
    iget v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->navigationBarHeight:I

    add-int/2addr p1, v1

    .line 319
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private createClassicItems(Landroid/widget/LinearLayout;)V
    .locals 18

    move-object/from16 v0, p0

    .line 364
    iget-object v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 366
    iget-object v2, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 367
    iget-object v3, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_min_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 368
    iget-object v4, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_max_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 370
    iget-object v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleState:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    sget-object v6, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->ALWAYS_SHOW:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    const/4 v7, 0x3

    if-ne v5, v6, :cond_0

    iget-object v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 371
    iget-object v3, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_small_inactive_min_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 372
    iget-object v4, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_small_inactive_max_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 375
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v5, v8

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v5, v8

    if-eqz v5, :cond_16

    .line 376
    iget-object v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_f

    .line 380
    :cond_1
    iget-object v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    div-int/2addr v5, v8

    int-to-float v5, v5

    cmpg-float v8, v5, v3

    if-gez v8, :cond_2

    goto :goto_0

    :cond_2
    cmpl-float v3, v5, v4

    if-lez v3, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v5

    .line 387
    :goto_0
    iget-object v4, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_text_size_active:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 388
    iget-object v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v8, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_text_size_inactive:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 389
    iget-object v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v9, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_margin_top_active:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    .line 391
    iget v9, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleActiveTextSize:F

    const/4 v10, 0x0

    cmpl-float v11, v9, v10

    if-eqz v11, :cond_4

    iget v11, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleInactiveTextSize:F

    cmpl-float v10, v11, v10

    if-eqz v10, :cond_4

    move v4, v9

    move v5, v11

    goto :goto_1

    .line 394
    :cond_4
    iget-object v9, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleState:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    if-ne v9, v6, :cond_5

    iget-object v6, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v7, :cond_5

    .line 395
    iget-object v4, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_text_size_forced_active:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 396
    iget-object v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_text_size_forced_inactive:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :cond_5
    :goto_1
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 400
    :goto_2
    iget-object v10, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_15

    .line 401
    iget v10, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    if-ne v10, v9, :cond_6

    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    .line 403
    :goto_3
    iget-object v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    .line 405
    sget v13, Lcom/aurelhubert/ahbottomnavigation/R$layout;->bottom_navigation_item:I

    invoke-virtual {v1, v13, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 406
    sget v14, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_container:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    .line 407
    sget v15, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_item_icon:I

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 408
    sget v11, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_item_title:I

    invoke-virtual {v13, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 409
    sget v6, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_notification:I

    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 411
    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v12, v7}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v12, v7}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleTypeface:Landroid/graphics/Typeface;

    if-eqz v7, :cond_7

    .line 415
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 418
    :cond_7
    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleState:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    move-object/from16 v16, v1

    sget-object v1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->ALWAYS_SHOW:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    if-ne v7, v1, :cond_8

    iget-object v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v7, 0x3

    if-le v1, v7, :cond_8

    .line 419
    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v14}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    move/from16 v17, v4

    const/4 v4, 0x0

    invoke-virtual {v14, v4, v1, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    :cond_8
    move/from16 v17, v4

    :goto_4
    if-eqz v10, :cond_a

    .line 423
    iget-boolean v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->selectedBackgroundVisible:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    .line 424
    invoke-virtual {v13, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_5

    :cond_9
    const/4 v1, 0x1

    .line 426
    :goto_5
    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 428
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_b

    .line 429
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 430
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v14, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v4, v8, v7, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 433
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 434
    iget v4, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationActiveMarginLeft:I

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v14, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v4, v6, v7, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 437
    invoke-virtual {v13}, Landroid/view/View;->requestLayout()V

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    .line 440
    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 442
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 443
    iget v4, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationInactiveMarginLeft:I

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v14, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v4, v6, v7, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 447
    :cond_b
    :goto_6
    iget-boolean v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->colored:Z

    if-eqz v1, :cond_c

    if-eqz v10, :cond_e

    .line 449
    iget-object v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v12, v1}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 450
    iget-object v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v12, v1}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getColor(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentColor:I

    goto :goto_7

    .line 453
    :cond_c
    iget v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->defaultBackgroundResource:I

    if-eqz v1, :cond_d

    .line 454
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .line 456
    :cond_d
    iget v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->defaultBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_e
    :goto_7
    if-eqz v10, :cond_f

    move/from16 v1, v17

    :goto_8
    const/4 v4, 0x0

    goto :goto_9

    :cond_f
    move v1, v5

    goto :goto_8

    .line 460
    :goto_9
    invoke-virtual {v11, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 462
    iget-object v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemsEnabledStates:[Ljava/lang/Boolean;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 463
    new-instance v1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$2;

    invoke-direct {v1, v0, v9}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$2;-><init>(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;I)V

    invoke-virtual {v13, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-boolean v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v4, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v10, :cond_10

    iget v4, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemActiveColor:I

    goto :goto_a

    :cond_10
    iget v4, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemInactiveColor:I

    :goto_a
    iget-boolean v6, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    invoke-static {v1, v4, v6}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->getTintDrawable(Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_b

    :cond_11
    iget-object v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    .line 470
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v4, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 471
    :goto_b
    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v10, :cond_12

    .line 472
    iget v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemActiveColor:I

    goto :goto_c

    :cond_12
    iget v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemInactiveColor:I

    :goto_c
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 473
    iget-boolean v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->soundEffectsEnabled:Z

    invoke-virtual {v13, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    const/4 v1, 0x1

    .line 474
    invoke-virtual {v13, v1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v4, 0x0

    goto :goto_e

    .line 476
    :cond_13
    iget-boolean v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v4, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v4, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemDisableColor:I

    iget-boolean v6, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    invoke-static {v1, v4, v6}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->getTintDrawable(Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_d

    :cond_14
    iget-object v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    .line 477
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v4, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 478
    :goto_d
    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    iget v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemDisableColor:I

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    .line 480
    invoke-virtual {v13, v1}, Landroid/view/View;->setClickable(Z)V

    const/4 v4, 0x0

    .line 481
    invoke-virtual {v13, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 484
    :goto_e
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v6, v3

    float-to-int v7, v2

    invoke-direct {v1, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v6, p1

    .line 485
    invoke-virtual {v6, v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    iget-object v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    move/from16 v4, v17

    const/4 v6, 0x0

    const/4 v7, 0x3

    goto/16 :goto_2

    :cond_15
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 489
    invoke-direct {v0, v2, v1}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->updateNotifications(ZI)V

    :cond_16
    :goto_f
    return-void
.end method

.method private createItems()V
    .locals 4

    .line 255
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 256
    sget-object v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->TAG:Ljava/lang/String;

    const-string v1, "The items list should have at least 3 items"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 258
    sget-object v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->TAG:Ljava/lang/String;

    const-string v1, "The items list should not have more than 5 items"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 263
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 265
    iget-object v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 266
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->backgroundColorView:Landroid/view/View;

    .line 268
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 269
    invoke-direct {p0, v0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->calculateHeight(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 270
    iget-object v2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->backgroundColorView:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->bottomNavigationHeight:I

    .line 274
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->linearLayoutContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 275
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 276
    iget-object v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->linearLayoutContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 278
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 279
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->linearLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    invoke-direct {p0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->isClassic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->linearLayoutContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->createClassicItems(Landroid/widget/LinearLayout;)V

    goto :goto_1

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->linearLayoutContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->createSmallItems(Landroid/widget/LinearLayout;)V

    .line 288
    :goto_1
    new-instance v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$1;

    invoke-direct {v0, p0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$1;-><init>(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private createSmallItems(Landroid/widget/LinearLayout;)V
    .locals 17

    move-object/from16 v0, p0

    .line 499
    iget-object v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 501
    iget-object v2, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 502
    iget-object v3, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_small_inactive_min_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 503
    iget-object v4, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_small_inactive_max_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 505
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-eqz v5, :cond_15

    .line 506
    iget-object v6, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_b

    .line 510
    :cond_0
    iget-object v6, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    div-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v6, v5, v3

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    cmpl-float v3, v5, v4

    if-lez v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v5

    .line 518
    :goto_0
    iget-object v4, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_small_margin_top_active:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 519
    iget-object v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_small_selected_width_difference:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 521
    iget-object v6, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v5

    add-float/2addr v6, v3

    iput v6, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->selectedItemWidth:F

    sub-float/2addr v3, v5

    .line 523
    iput v3, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notSelectedItemWidth:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 526
    :goto_1
    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_14

    .line 529
    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    .line 531
    sget v9, Lcom/aurelhubert/ahbottomnavigation/R$layout;->bottom_navigation_small_item:I

    invoke-virtual {v1, v9, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 532
    sget v10, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_small_item_icon:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 533
    sget v11, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_small_item_title:I

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 534
    sget v12, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_notification:I

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 535
    iget-object v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v7, v13}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    iget-object v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleState:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    sget-object v14, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->ALWAYS_HIDE:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    if-eq v13, v14, :cond_3

    .line 538
    iget-object v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v7, v13}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    :cond_3
    iget v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleActiveTextSize:F

    const/4 v15, 0x0

    cmpl-float v16, v13, v15

    if-eqz v16, :cond_4

    .line 542
    invoke-virtual {v11, v5, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 545
    :cond_4
    iget-object v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleTypeface:Landroid/graphics/Typeface;

    if-eqz v13, :cond_5

    .line 546
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 549
    :cond_5
    iget v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    if-ne v6, v13, :cond_7

    .line 550
    iget-boolean v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->selectedBackgroundVisible:Z

    if-eqz v13, :cond_6

    .line 551
    invoke-virtual {v9, v8}, Landroid/view/View;->setSelected(Z)V

    .line 553
    :cond_6
    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 556
    iget-object v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleState:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    if-eq v13, v14, :cond_8

    .line 557
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    instance-of v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v13, :cond_8

    .line 558
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 559
    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v13, v15, v4, v8, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 562
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 563
    iget v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationActiveMarginLeft:I

    iget v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationActiveMarginTop:I

    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v15, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v5, v8, v12, v13, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 566
    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    .line 570
    :cond_7
    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 572
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 573
    iget v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationInactiveMarginLeft:I

    iget v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationInactiveMarginTop:I

    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v15, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v5, v8, v12, v13, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 577
    :cond_8
    :goto_2
    iget-boolean v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->colored:Z

    if-eqz v5, :cond_9

    .line 578
    iget v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    if-ne v6, v5, :cond_b

    .line 579
    iget-object v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v7, v5}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getColor(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 580
    iget-object v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v7, v5}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getColor(Landroid/content/Context;)I

    move-result v5

    iput v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentColor:I

    goto :goto_3

    .line 583
    :cond_9
    iget v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->defaultBackgroundResource:I

    if-eqz v5, :cond_a

    .line 584
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 586
    :cond_a
    iget v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->defaultBackgroundColor:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 590
    :cond_b
    :goto_3
    iget-object v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemsEnabledStates:[Ljava/lang/Boolean;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 591
    iget-boolean v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    if-eqz v5, :cond_d

    iget-object v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    if-ne v7, v6, :cond_c

    iget v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemActiveColor:I

    goto :goto_4

    :cond_c
    iget v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemInactiveColor:I

    :goto_4
    iget-boolean v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    invoke-static {v5, v7, v8}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->getTintDrawable(Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_5

    :cond_d
    iget-object v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    .line 592
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 593
    :goto_5
    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 594
    iget v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    if-ne v5, v6, :cond_e

    iget v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemActiveColor:I

    goto :goto_6

    :cond_e
    iget v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemInactiveColor:I

    :goto_6
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 595
    iget v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    if-ne v5, v6, :cond_f

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_f
    const/4 v15, 0x0

    :goto_7
    invoke-virtual {v11, v15}, Landroid/view/View;->setAlpha(F)V

    .line 596
    new-instance v5, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$3;

    invoke-direct {v5, v0, v6}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$3;-><init>(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;I)V

    invoke-virtual {v9, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    iget-boolean v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->soundEffectsEnabled:Z

    invoke-virtual {v9, v5}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    const/4 v5, 0x1

    .line 603
    invoke-virtual {v9, v5}, Landroid/view/View;->setEnabled(Z)V

    const/4 v5, 0x0

    goto :goto_9

    .line 605
    :cond_10
    iget-boolean v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    if-eqz v5, :cond_11

    iget-object v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemDisableColor:I

    iget-boolean v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    invoke-static {v5, v7, v8}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->getTintDrawable(Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_8

    :cond_11
    iget-object v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    .line 606
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 607
    :goto_8
    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 608
    iget v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemDisableColor:I

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x0

    .line 609
    invoke-virtual {v11, v5}, Landroid/view/View;->setAlpha(F)V

    const/4 v5, 0x1

    .line 610
    invoke-virtual {v9, v5}, Landroid/view/View;->setClickable(Z)V

    const/4 v5, 0x0

    .line 611
    invoke-virtual {v9, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 614
    :goto_9
    iget v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    if-ne v6, v7, :cond_12

    iget v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->selectedItemWidth:F

    float-to-int v7, v7

    goto :goto_a

    :cond_12
    float-to-int v7, v3

    .line 617
    :goto_a
    iget-object v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleState:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    if-ne v8, v14, :cond_13

    float-to-double v7, v3

    const-wide v10, 0x3ff28f5c28f5c28fL    # 1.16

    mul-double v7, v7, v10

    double-to-int v7, v7

    .line 621
    :cond_13
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v10, v2

    invoke-direct {v8, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v7, p1

    .line 622
    invoke-virtual {v7, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    iget-object v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->views:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_14
    const/4 v1, -0x1

    const/4 v5, 0x1

    .line 626
    invoke-direct {v0, v5, v1}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->updateNotifications(ZI)V

    :cond_15
    :goto_b
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 194
    iput-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    .line 198
    sget v0, Lcom/aurelhubert/ahbottomnavigation/R$color;->colorBottomNavigationAccent:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleColorActive:I

    .line 199
    sget v1, Lcom/aurelhubert/ahbottomnavigation/R$color;->colorBottomNavigationInactive:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleColorInactive:I

    .line 200
    sget v2, Lcom/aurelhubert/ahbottomnavigation/R$color;->colorBottomNavigationDisable:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemDisableColor:I

    .line 203
    sget v3, Lcom/aurelhubert/ahbottomnavigation/R$color;->colorBottomNavigationActiveColored:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->coloredTitleColorActive:I

    .line 204
    sget v4, Lcom/aurelhubert/ahbottomnavigation/R$color;->colorBottomNavigationInactiveColored:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->coloredTitleColorInactive:I

    if-eqz p2, :cond_0

    .line 207
    sget-object v5, Lcom/aurelhubert/ahbottomnavigation/R$styleable;->AHBottomNavigationBehavior_Params:[I

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v5, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 209
    :try_start_0
    sget v5, Lcom/aurelhubert/ahbottomnavigation/R$styleable;->AHBottomNavigationBehavior_Params_selectedBackgroundVisible:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->selectedBackgroundVisible:Z

    .line 210
    sget v5, Lcom/aurelhubert/ahbottomnavigation/R$styleable;->AHBottomNavigationBehavior_Params_translucentNavigationEnabled:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->translucentNavigationEnabled:Z

    .line 212
    sget v5, Lcom/aurelhubert/ahbottomnavigation/R$styleable;->AHBottomNavigationBehavior_Params_accentColor:I

    .line 213
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 212
    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleColorActive:I

    .line 214
    sget v0, Lcom/aurelhubert/ahbottomnavigation/R$styleable;->AHBottomNavigationBehavior_Params_inactiveColor:I

    .line 215
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 214
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleColorInactive:I

    .line 216
    sget v0, Lcom/aurelhubert/ahbottomnavigation/R$styleable;->AHBottomNavigationBehavior_Params_disableColor:I

    .line 217
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 216
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemDisableColor:I

    .line 219
    sget v0, Lcom/aurelhubert/ahbottomnavigation/R$styleable;->AHBottomNavigationBehavior_Params_coloredActive:I

    .line 220
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 219
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->coloredTitleColorActive:I

    .line 221
    sget v0, Lcom/aurelhubert/ahbottomnavigation/R$styleable;->AHBottomNavigationBehavior_Params_coloredInactive:I

    .line 222
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 221
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->coloredTitleColorInactive:I

    .line 224
    sget v0, Lcom/aurelhubert/ahbottomnavigation/R$styleable;->AHBottomNavigationBehavior_Params_colored:I

    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->colored:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    throw p1

    :cond_0
    :goto_0
    const p2, 0x106000b

    .line 231
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationTextColor:I

    .line 232
    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget p2, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->bottomNavigationHeight:I

    .line 234
    iget p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleColorActive:I

    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemActiveColor:I

    .line 235
    iget p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleColorInactive:I

    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemInactiveColor:I

    .line 238
    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget p2, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_notification_margin_left_active:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationActiveMarginLeft:I

    .line 239
    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget p2, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_notification_margin_left:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationInactiveMarginLeft:I

    .line 240
    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget p2, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_notification_margin_top_active:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationActiveMarginTop:I

    .line 241
    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget p2, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_notification_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationInactiveMarginTop:I

    const-wide/16 p1, 0x96

    .line 242
    iput-wide p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationAnimationDuration:J

    .line 244
    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget p2, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_elevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 246
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    iget v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->bottomNavigationHeight:I

    invoke-direct {p1, p2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 248
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private isClassic()Z
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleState:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    sget-object v1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->ALWAYS_HIDE:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->SHOW_WHEN_ACTIVE_FORCE:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    .line 354
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleState:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    sget-object v1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->ALWAYS_SHOW:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateItems(IZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 638
    iget v2, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    .line 639
    iget-object v2, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->tabSelectedListener:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnTabSelectedListener;

    if-eqz v2, :cond_10

    if-eqz p2, :cond_10

    .line 640
    invoke-interface {v2, v1, v3}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnTabSelectedListener;->onTabSelected(IZ)Z

    return-void

    .line 645
    :cond_0
    iget-object v2, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->tabSelectedListener:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnTabSelectedListener;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 646
    invoke-interface {v2, v1, v4}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnTabSelectedListener;->onTabSelected(IZ)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_6

    .line 650
    :cond_1
    iget-object v2, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_margin_top_active:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 651
    iget-object v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_margin_top_inactive:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 652
    iget-object v6, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v7, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_text_size_active:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 653
    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v8, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_text_size_inactive:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 655
    iget v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleActiveTextSize:F

    const/4 v9, 0x0

    cmpl-float v10, v8, v9

    if-eqz v10, :cond_2

    iget v10, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleInactiveTextSize:F

    cmpl-float v11, v10, v9

    if-eqz v11, :cond_2

    move v6, v8

    move v7, v10

    goto :goto_0

    .line 658
    :cond_2
    iget-object v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleState:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    sget-object v10, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->ALWAYS_SHOW:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    if-ne v8, v10, :cond_3

    iget-object v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x3

    if-le v8, v10, :cond_3

    .line 659
    iget-object v6, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v7, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_text_size_forced_active:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 660
    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v8, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_text_size_forced_inactive:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    :cond_3
    :goto_0
    const/4 v8, 0x0

    .line 663
    :goto_1
    iget-object v10, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->views:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_d

    .line 665
    iget-object v10, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->views:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 666
    iget-boolean v11, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->selectedBackgroundVisible:Z

    if-eqz v11, :cond_5

    if-ne v8, v1, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    .line 667
    :goto_2
    invoke-virtual {v10, v11}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    if-ne v8, v1, :cond_b

    .line 672
    sget v11, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_item_title:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 673
    sget v12, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_item_icon:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Landroid/widget/ImageView;

    .line 674
    sget v12, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_notification:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 676
    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 677
    invoke-static {v15, v5, v2}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateTopMargin(Landroid/view/View;II)V

    .line 678
    iget v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationInactiveMarginLeft:I

    iget v14, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationActiveMarginLeft:I

    invoke-static {v12, v13, v14}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateLeftMargin(Landroid/view/View;II)V

    .line 679
    iget v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemInactiveColor:I

    iget v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemActiveColor:I

    invoke-static {v11, v12, v13}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateTextColor(Landroid/widget/TextView;II)V

    .line 680
    invoke-static {v11, v7, v6}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateTextSize(Landroid/widget/TextView;FF)V

    .line 681
    iget-boolean v11, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    if-eqz v11, :cond_6

    .line 682
    iget-object v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    iget-object v11, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v11, v12}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iget v11, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemInactiveColor:I

    iget v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemActiveColor:I

    iget-boolean v3, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    move/from16 v18, v3

    move/from16 v16, v11

    move/from16 v17, v12

    invoke-static/range {v13 .. v18}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateDrawableColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;IIZ)V

    .line 686
    :cond_6
    iget-boolean v3, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->colored:Z

    if-eqz v3, :cond_8

    .line 688
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 689
    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    .line 690
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    .line 692
    iget-object v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->circleRevealAnim:Landroid/animation/Animator;

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Landroid/animation/Animator;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 693
    iget-object v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->circleRevealAnim:Landroid/animation/Animator;

    invoke-virtual {v12}, Landroid/animation/Animator;->cancel()V

    .line 694
    iget-object v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v12, v13}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getColor(Landroid/content/Context;)I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 695
    iget-object v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->backgroundColorView:Landroid/view/View;

    invoke-virtual {v12, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 698
    :cond_7
    iget-object v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->backgroundColorView:Landroid/view/View;

    int-to-float v3, v3

    invoke-static {v12, v11, v10, v9, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->circleRevealAnim:Landroid/animation/Animator;

    const-wide/16 v10, 0x5

    .line 699
    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 700
    iget-object v3, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->circleRevealAnim:Landroid/animation/Animator;

    new-instance v10, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$4;

    invoke-direct {v10, v0, v1}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$4;-><init>(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;I)V

    invoke-virtual {v3, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 720
    iget-object v3, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->circleRevealAnim:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto/16 :goto_4

    :cond_8
    if-eqz v3, :cond_9

    .line 722
    iget v3, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentColor:I

    iget-object v10, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    .line 723
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v11, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getColor(Landroid/content/Context;)I

    move-result v10

    .line 722
    invoke-static {v0, v3, v10}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateViewBackgroundColor(Landroid/view/View;II)V

    goto :goto_4

    .line 725
    :cond_9
    iget v3, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->defaultBackgroundResource:I

    if-eqz v3, :cond_a

    .line 726
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 728
    :cond_a
    iget v3, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->defaultBackgroundColor:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 730
    :goto_3
    iget-object v3, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->backgroundColorView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 733
    :cond_b
    iget v3, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    if-ne v8, v3, :cond_c

    .line 735
    sget v3, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_item_title:I

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 736
    sget v11, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_item_icon:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Landroid/widget/ImageView;

    .line 737
    sget v11, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_notification:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 739
    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 740
    invoke-static {v14, v2, v5}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateTopMargin(Landroid/view/View;II)V

    .line 741
    iget v11, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationActiveMarginLeft:I

    iget v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationInactiveMarginLeft:I

    invoke-static {v10, v11, v12}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateLeftMargin(Landroid/view/View;II)V

    .line 742
    iget v10, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemActiveColor:I

    iget v11, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemInactiveColor:I

    invoke-static {v3, v10, v11}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateTextColor(Landroid/widget/TextView;II)V

    .line 743
    invoke-static {v3, v6, v7}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateTextSize(Landroid/widget/TextView;FF)V

    .line 744
    iget-boolean v3, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    if-eqz v3, :cond_c

    .line 745
    iget-object v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    iget-object v3, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    iget v10, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v10, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v3, v10}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iget v15, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemActiveColor:I

    iget v3, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemInactiveColor:I

    iget-boolean v10, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    move/from16 v16, v3

    move/from16 v17, v10

    invoke-static/range {v12 .. v17}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateDrawableColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;IIZ)V

    :cond_c
    :goto_4
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x1

    goto/16 :goto_1

    .line 751
    :cond_d
    iput v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    if-lez v1, :cond_e

    .line 752
    iget-object v2, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 753
    iget-object v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    iget v2, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v2, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getColor(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentColor:I

    return-void

    .line 754
    :cond_e
    iget v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    .line 755
    iget v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->defaultBackgroundResource:I

    if-eqz v1, :cond_f

    .line 756
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 758
    :cond_f
    iget v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->defaultBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 760
    :goto_5
    iget-object v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->backgroundColorView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_10
    :goto_6
    return-void
.end method

.method private updateNotifications(ZI)V
    .locals 7

    const/4 v0, 0x0

    .line 906
    :goto_0
    iget-object v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 908
    iget-object v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_1

    goto/16 :goto_3

    .line 916
    :cond_1
    iget-object v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notifications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;

    .line 917
    iget v2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationTextColor:I

    invoke-static {v1, v2}, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotificationHelper;->getTextColor(Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;I)I

    move-result v2

    .line 918
    iget v3, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationBackgroundColor:I

    invoke-static {v1, v3}, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotificationHelper;->getBackgroundColor(Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;I)I

    move-result v3

    .line 920
    iget-object v4, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->views:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    sget v5, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_notification:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 922
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 923
    invoke-virtual {v1}, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz p1, :cond_4

    .line 926
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 927
    iget-object v2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_2

    .line 928
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 930
    invoke-virtual {v4, v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 933
    :goto_1
    iget-object v2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 935
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 936
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    .line 942
    iget-object v2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    sget v6, Lcom/aurelhubert/ahbottomnavigation/R$drawable;->notification_background:I

    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 944
    iget-boolean v6, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    invoke-static {v2, v3, v6}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->getTintDrawable(Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 953
    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 954
    const-string v1, ""

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v5, :cond_6

    .line 956
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 957
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 958
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 959
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 960
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-wide v2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationAnimationDuration:J

    .line 961
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 962
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    .line 964
    :cond_5
    invoke-virtual {v1}, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 965
    invoke-virtual {v1}, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v5, :cond_6

    .line 967
    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleX(F)V

    .line 968
    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleY(F)V

    .line 969
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 970
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 971
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 972
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 973
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-wide v2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationAnimationDuration:J

    .line 974
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 975
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method private updateSmallItems(IZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 772
    iget v2, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    .line 773
    iget-object v2, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->tabSelectedListener:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnTabSelectedListener;

    if-eqz v2, :cond_10

    if-eqz p2, :cond_10

    .line 774
    invoke-interface {v2, v1, v3}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnTabSelectedListener;->onTabSelected(IZ)Z

    return-void

    .line 779
    :cond_0
    iget-object v2, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->tabSelectedListener:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnTabSelectedListener;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 780
    invoke-interface {v2, v1, v4}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnTabSelectedListener;->onTabSelected(IZ)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_5

    .line 784
    :cond_1
    iget-object v2, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_small_margin_top_active:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 785
    iget-object v5, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_small_margin_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    .line 787
    :goto_0
    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->views:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    .line 789
    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->views:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 790
    iget-boolean v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->selectedBackgroundVisible:Z

    if-eqz v8, :cond_3

    if-ne v6, v1, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 791
    :goto_1
    invoke-virtual {v7, v8}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-ne v6, v1, :cond_a

    .line 796
    sget v10, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_small_container:I

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 797
    sget v11, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_small_item_title:I

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 798
    sget v12, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_small_item_icon:I

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Landroid/widget/ImageView;

    .line 799
    sget v12, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_notification:I

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 801
    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 803
    iget-object v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleState:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    sget-object v13, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->ALWAYS_HIDE:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    if-eq v12, v13, :cond_4

    .line 804
    invoke-static {v15, v5, v2}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateTopMargin(Landroid/view/View;II)V

    .line 805
    iget v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationInactiveMarginLeft:I

    iget v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationActiveMarginLeft:I

    invoke-static {v7, v12, v13}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateLeftMargin(Landroid/view/View;II)V

    .line 806
    iget v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationInactiveMarginTop:I

    iget v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationActiveMarginTop:I

    invoke-static {v7, v12, v13}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateTopMargin(Landroid/view/View;II)V

    .line 807
    iget v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemInactiveColor:I

    iget v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemActiveColor:I

    invoke-static {v11, v7, v12}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateTextColor(Landroid/widget/TextView;II)V

    .line 808
    iget v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notSelectedItemWidth:F

    iget v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->selectedItemWidth:F

    invoke-static {v10, v7, v12}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateWidth(Landroid/view/View;FF)V

    .line 811
    :cond_4
    invoke-static {v11, v9, v8}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateAlpha(Landroid/view/View;FF)V

    .line 812
    iget-boolean v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    if-eqz v7, :cond_5

    .line 813
    iget-object v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iget v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemInactiveColor:I

    iget v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemActiveColor:I

    iget-boolean v10, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v10

    invoke-static/range {v13 .. v18}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateDrawableColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;IIZ)V

    .line 817
    :cond_5
    iget-boolean v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->colored:Z

    if-eqz v7, :cond_7

    .line 818
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 819
    iget-object v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->views:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v8

    float-to-int v8, v8

    iget-object v10, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->views:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v8, v10

    .line 820
    iget-object v10, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->views:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    .line 822
    iget-object v11, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->circleRevealAnim:Landroid/animation/Animator;

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroid/animation/Animator;->isRunning()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 823
    iget-object v11, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->circleRevealAnim:Landroid/animation/Animator;

    invoke-virtual {v11}, Landroid/animation/Animator;->cancel()V

    .line 824
    iget-object v11, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v11, v12}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getColor(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 825
    iget-object v11, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->backgroundColorView:Landroid/view/View;

    invoke-virtual {v11, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 828
    :cond_6
    iget-object v11, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->backgroundColorView:Landroid/view/View;

    int-to-float v7, v7

    invoke-static {v11, v8, v10, v9, v7}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v7

    iput-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->circleRevealAnim:Landroid/animation/Animator;

    const-wide/16 v8, 0x5

    .line 829
    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 830
    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->circleRevealAnim:Landroid/animation/Animator;

    new-instance v8, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$5;

    invoke-direct {v8, v0, v1}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$5;-><init>(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;I)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 850
    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->circleRevealAnim:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->start()V

    goto/16 :goto_3

    :cond_7
    if-eqz v7, :cond_8

    .line 852
    iget v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentColor:I

    iget-object v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    .line 853
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v9, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getColor(Landroid/content/Context;)I

    move-result v8

    .line 852
    invoke-static {v0, v7, v8}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateViewBackgroundColor(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 855
    :cond_8
    iget v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->defaultBackgroundResource:I

    if-eqz v7, :cond_9

    .line 856
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 858
    :cond_9
    iget v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->defaultBackgroundColor:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 860
    :goto_2
    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->backgroundColorView:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    .line 863
    :cond_a
    iget v10, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    if-ne v6, v10, :cond_c

    .line 865
    sget v10, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_small_container:I

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 866
    sget v11, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_small_item_title:I

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 867
    sget v12, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_small_item_icon:I

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Landroid/widget/ImageView;

    .line 868
    sget v12, Lcom/aurelhubert/ahbottomnavigation/R$id;->bottom_navigation_notification:I

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 870
    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 872
    iget-object v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleState:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    sget-object v13, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->ALWAYS_HIDE:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    if-eq v12, v13, :cond_b

    .line 873
    invoke-static {v15, v2, v5}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateTopMargin(Landroid/view/View;II)V

    .line 874
    iget v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationActiveMarginLeft:I

    iget v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationInactiveMarginLeft:I

    invoke-static {v7, v12, v13}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateLeftMargin(Landroid/view/View;II)V

    .line 875
    iget v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationActiveMarginTop:I

    iget v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationInactiveMarginTop:I

    invoke-static {v7, v12, v13}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateTopMargin(Landroid/view/View;II)V

    .line 876
    iget v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemActiveColor:I

    iget v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemInactiveColor:I

    invoke-static {v11, v7, v12}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateTextColor(Landroid/widget/TextView;II)V

    .line 877
    iget v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->selectedItemWidth:F

    iget v12, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notSelectedItemWidth:F

    invoke-static {v10, v7, v12}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateWidth(Landroid/view/View;FF)V

    .line 880
    :cond_b
    invoke-static {v11, v8, v9}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateAlpha(Landroid/view/View;FF)V

    .line 881
    iget-boolean v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    if-eqz v7, :cond_c

    .line 882
    iget-object v13, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    iget-object v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    iget v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iget v7, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemActiveColor:I

    iget v8, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemInactiveColor:I

    iget-boolean v9, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-static/range {v13 .. v18}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateDrawableColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;IIZ)V

    :cond_c
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 888
    :cond_d
    iput v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    if-lez v1, :cond_e

    .line 889
    iget-object v2, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 890
    iget-object v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    iget v2, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    iget-object v2, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;->getColor(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentColor:I

    return-void

    .line 891
    :cond_e
    iget v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    .line 892
    iget v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->defaultBackgroundResource:I

    if-eqz v1, :cond_f

    .line 893
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 895
    :cond_f
    iget v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->defaultBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 897
    :goto_4
    iget-object v1, v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->backgroundColorView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_10
    :goto_5
    return-void
.end method


# virtual methods
.method public addItem(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;)V
    .locals 2

    .line 1005
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 1006
    sget-object v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->TAG:Ljava/lang/String;

    const-string v1, "The items list should not have more than 5 items"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    invoke-direct {p0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->createItems()V

    return-void
.end method

.method public getAccentColor()I
    .locals 1

    .line 1109
    iget v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemActiveColor:I

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1217
    iget v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    return v0
.end method

.method public getDefaultBackgroundColor()I
    .locals 1

    .line 1080
    iget v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->defaultBackgroundColor:I

    return v0
.end method

.method public getInactiveColor()I
    .locals 1

    .line 1129
    iget v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemInactiveColor:I

    return v0
.end method

.method public getItemsCount()I
    .locals 1

    .line 1054
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTitleState()Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;
    .locals 1

    .line 1389
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleState:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    return-object v0
.end method

.method public hasImmersive()Z
    .locals 4

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 329
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 330
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 332
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 333
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 335
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 336
    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 338
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 339
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v1, v3, :cond_1

    if-le v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 156
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 157
    iget-boolean p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->isBehaviorTranslationSet:Z

    if-nez p1, :cond_0

    .line 159
    iget-boolean p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->behaviorTranslationEnabled:Z

    invoke-virtual {p0, p1}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setBehaviorTranslationEnabled(Z)V

    const/4 p1, 0x1

    .line 160
    iput-boolean p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->isBehaviorTranslationSet:Z

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 175
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 176
    check-cast p1, Landroid/os/Bundle;

    .line 177
    const-string v0, "current_item"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    .line 178
    const-string v0, "notifications"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notifications:Ljava/util/List;

    .line 179
    const-string v0, "superState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 181
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    const-string v1, "superState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 168
    const-string v1, "current_item"

    iget v2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->currentItem:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notifications:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "notifications"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 151
    invoke-direct {p0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->createItems()V

    return-void
.end method

.method public setAccentColor(I)V
    .locals 0

    .line 1118
    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleColorActive:I

    .line 1119
    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemActiveColor:I

    .line 1120
    invoke-direct {p0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->createItems()V

    return-void
.end method

.method public setBehaviorTranslationEnabled(Z)V
    .locals 3

    .line 1265
    iput-boolean p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->behaviorTranslationEnabled:Z

    .line 1266
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_1

    .line 1267
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1268
    iget-object v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->bottomNavigationBehavior:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;

    if-nez v1, :cond_0

    .line 1269
    new-instance v1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;

    iget v2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->navigationBarHeight:I

    invoke-direct {v1, p1, v2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;-><init>(ZI)V

    iput-object v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->bottomNavigationBehavior:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;

    goto :goto_0

    .line 1271
    :cond_0
    iget v2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->navigationBarHeight:I

    invoke-virtual {v1, p1, v2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->setBehaviorTranslationEnabled(ZI)V

    .line 1276
    :goto_0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->bottomNavigationBehavior:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 1277
    iget-boolean p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->needHideBottomNavigation:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1278
    iput-boolean p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->needHideBottomNavigation:Z

    .line 1279
    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->bottomNavigationBehavior:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;

    iget v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->bottomNavigationHeight:I

    iget-boolean v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->hideBottomNavigationWithAnimation:Z

    invoke-virtual {p1, p0, v0, v1}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->hideView(Landroid/view/View;IZ)V

    :cond_1
    return-void
.end method

.method public setColored(Z)V
    .locals 1

    .line 1068
    iput-boolean p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->colored:Z

    if-eqz p1, :cond_0

    .line 1069
    iget v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->coloredTitleColorActive:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleColorActive:I

    :goto_0
    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemActiveColor:I

    if-eqz p1, :cond_1

    .line 1070
    iget p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->coloredTitleColorInactive:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleColorInactive:I

    :goto_1
    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemInactiveColor:I

    .line 1071
    invoke-direct {p0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->createItems()V

    return-void
.end method

.method public setColoredModeColors(II)V
    .locals 0

    .line 1150
    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->coloredTitleColorActive:I

    .line 1151
    iput p2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->coloredTitleColorInactive:I

    .line 1152
    invoke-direct {p0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->createItems()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1226
    invoke-virtual {p0, p1, v0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2

    .line 1236
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1237
    sget-object p1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The position is out of bounds of the items ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " elements)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleState:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    sget-object v1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->ALWAYS_HIDE:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->SHOW_WHEN_ACTIVE_FORCE:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->items:Ljava/util/ArrayList;

    .line 1243
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleState:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    sget-object v1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->ALWAYS_SHOW:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    if-ne v0, v1, :cond_2

    .line 1244
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->updateItems(IZ)V

    return-void

    .line 1246
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->updateSmallItems(IZ)V

    return-void
.end method

.method public setDefaultBackgroundColor(I)V
    .locals 0

    .line 1089
    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->defaultBackgroundColor:I

    .line 1090
    invoke-direct {p0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->createItems()V

    return-void
.end method

.method public setDefaultBackgroundResource(I)V
    .locals 0

    .line 1099
    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->defaultBackgroundResource:I

    .line 1100
    invoke-direct {p0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->createItems()V

    return-void
.end method

.method public setForceTint(Z)V
    .locals 0

    .line 1379
    iput-boolean p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->forceTint:Z

    .line 1380
    invoke-direct {p0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->createItems()V

    return-void
.end method

.method public setInactiveColor(I)V
    .locals 0

    .line 1138
    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleColorInactive:I

    .line 1139
    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemInactiveColor:I

    .line 1140
    invoke-direct {p0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->createItems()V

    return-void
.end method

.method public setItemDisableColor(I)V
    .locals 0

    .line 1640
    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->itemDisableColor:I

    return-void
.end method

.method public setNotificationAnimationDuration(J)V
    .locals 0

    .line 1548
    iput-wide p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationAnimationDuration:J

    const/4 p1, 0x1

    const/4 p2, -0x1

    .line 1549
    invoke-direct {p0, p1, p2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->updateNotifications(ZI)V

    return-void
.end method

.method public setNotificationBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1513
    iput-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    const/4 v0, -0x1

    .line 1514
    invoke-direct {p0, p1, v0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->updateNotifications(ZI)V

    return-void
.end method

.method public setNotificationBackgroundColor(I)V
    .locals 1

    .line 1523
    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationBackgroundColor:I

    const/4 p1, 0x1

    const/4 v0, -0x1

    .line 1524
    invoke-direct {p0, p1, v0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->updateNotifications(ZI)V

    return-void
.end method

.method public setNotificationBackgroundColorResource(I)V
    .locals 1

    .line 1533
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationBackgroundColor:I

    const/4 p1, 0x1

    const/4 v0, -0x1

    .line 1534
    invoke-direct {p0, p1, v0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->updateNotifications(ZI)V

    return-void
.end method

.method public setNotificationTextColor(I)V
    .locals 1

    .line 1493
    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationTextColor:I

    const/4 p1, 0x1

    const/4 v0, -0x1

    .line 1494
    invoke-direct {p0, p1, v0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->updateNotifications(ZI)V

    return-void
.end method

.method public setNotificationTextColorResource(I)V
    .locals 1

    .line 1503
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationTextColor:I

    const/4 p1, 0x1

    const/4 v0, -0x1

    .line 1504
    invoke-direct {p0, p1, v0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->updateNotifications(ZI)V

    return-void
.end method

.method public setNotificationTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1543
    iput-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->notificationTypeface:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    const/4 v0, -0x1

    .line 1544
    invoke-direct {p0, p1, v0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->updateNotifications(ZI)V

    return-void
.end method

.method public setOnNavigationPositionListener(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnNavigationPositionListener;)V
    .locals 1

    .line 1425
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->bottomNavigationBehavior:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;

    if-eqz v0, :cond_0

    .line 1426
    invoke-virtual {v0, p1}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationBehavior;->setOnNavigationPositionListener(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnNavigationPositionListener;)V

    :cond_0
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnTabSelectedListener;)V
    .locals 0

    .line 1410
    iput-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->tabSelectedListener:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnTabSelectedListener;

    return-void
.end method

.method public setSelectedBackgroundVisible(Z)V
    .locals 0

    .line 1159
    iput-boolean p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->selectedBackgroundVisible:Z

    .line 1160
    invoke-direct {p0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->createItems()V

    return-void
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 0

    .line 144
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSoundEffectsEnabled(Z)V

    .line 145
    iput-boolean p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->soundEffectsEnabled:Z

    return-void
.end method

.method public setTitleState(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;)V
    .locals 0

    .line 1402
    iput-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleState:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    .line 1403
    invoke-direct {p0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->createItems()V

    return-void
.end method

.method public setTitleTextSizeInSp(FF)V
    .locals 2

    .line 1192
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleActiveTextSize:F

    .line 1193
    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleInactiveTextSize:F

    .line 1194
    invoke-direct {p0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->createItems()V

    return-void
.end method

.method public setTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->titleTypeface:Landroid/graphics/Typeface;

    .line 1170
    invoke-direct {p0}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->createItems()V

    return-void
.end method

.method public setTranslucentNavigationEnabled(Z)V
    .locals 0

    .line 1360
    iput-boolean p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->translucentNavigationEnabled:Z

    return-void
.end method

.method public setUseElevation(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1570
    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/aurelhubert/ahbottomnavigation/R$dimen;->bottom_navigation_elevation:I

    .line 1571
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1570
    :goto_0
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    const/4 p1, 0x0

    .line 1572
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method
