.class public Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabColorizer;,
        Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;,
        Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabClickListener;
    }
.end annotation


# instance fields
.field private final mContentDescriptions:Landroid/util/SparseArray;

.field private mDistributeEvenly:Z

.field private final mTabStrip:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

.field private mTabViewLayoutId:I

.field private mTabViewTextViewId:I

.field private final mTitleOffset:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTabStrip(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mTabStrip:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewPager(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewPagerPageChangeListener(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mscrollToTab(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->scrollToTab(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    const/4 p2, 0x0

    .line 85
    invoke-virtual {p0, p2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    const/4 p2, 0x1

    .line 87
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41c00000    # 24.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mTitleOffset:I

    .line 91
    new-instance p2, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    invoke-direct {p2, p1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mTabStrip:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    const/4 p1, -0x1

    const/4 p3, -0x2

    .line 92
    invoke-virtual {p0, p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private populateTabStrip()V
    .locals 9

    .line 180
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabClickListener;-><init>(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout-IA;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 183
    :goto_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 187
    iget v5, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mTabViewLayoutId:I

    if-eqz v5, :cond_0

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget v6, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mTabViewLayoutId:I

    iget-object v7, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mTabStrip:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    invoke-virtual {v5, v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 191
    iget v6, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mTabViewTextViewId:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    move-object v5, v2

    move-object v6, v5

    :goto_1
    if-nez v5, :cond_1

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    :cond_1
    if-nez v6, :cond_2

    .line 198
    instance-of v7, v5, Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 199
    move-object v6, v5

    check-cast v6, Landroid/widget/TextView;

    .line 202
    :cond_2
    iget-boolean v7, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mDistributeEvenly:Z

    if-eqz v7, :cond_3

    .line 203
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 204
    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v8, 0x3f800000    # 1.0f

    .line 205
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 208
    :cond_3
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 212
    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 215
    :cond_4
    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mTabStrip:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 216
    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v6

    if-ne v4, v6, :cond_5

    const/4 v6, 0x1

    .line 217
    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private scrollToTab(II)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mTabStrip:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mTabStrip:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 243
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 247
    :cond_1
    iget p1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mTitleOffset:I

    sub-int/2addr v0, p1

    :cond_2
    const/4 p1, 0x0

    .line 250
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4

    .line 160
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x11

    .line 161
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    .line 162
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 163
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 170
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 171
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 174
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 228
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 230
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->scrollToTab(II)V

    :cond_0
    return-void
.end method

.method public setCustomTabColorizer(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabColorizer;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mTabStrip:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->setCustomTabColorizer(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabColorizer;)V

    return-void
.end method

.method public setCustomTabView(II)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mTabViewLayoutId:I

    .line 137
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mTabViewTextViewId:I

    return-void
.end method

.method public setDistributeEvenly(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mDistributeEvenly:Z

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mTabStrip:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->setSelectedIndicatorColors([I)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mTabStrip:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 147
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 149
    new-instance v0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout-IA;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 150
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->populateTabStrip()V

    :cond_0
    return-void
.end method
