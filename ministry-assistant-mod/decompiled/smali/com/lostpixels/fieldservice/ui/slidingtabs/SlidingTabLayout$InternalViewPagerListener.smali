.class Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 293
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    .line 295
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->-$$Nest$fgetmViewPagerPageChangeListener(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->-$$Nest$fgetmViewPagerPageChangeListener(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->-$$Nest$fgetmTabStrip(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->-$$Nest$fgetmTabStrip(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 279
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->-$$Nest$fgetmTabStrip(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 283
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {v1, p1, v0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->-$$Nest$mscrollToTab(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;II)V

    .line 285
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->-$$Nest$fgetmViewPagerPageChangeListener(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->-$$Nest$fgetmViewPagerPageChangeListener(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 302
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->-$$Nest$fgetmTabStrip(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 304
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {v0, p1, v1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->-$$Nest$mscrollToTab(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;II)V

    :cond_0
    const/4 v0, 0x0

    .line 306
    :goto_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->-$$Nest$fgetmTabStrip(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 307
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->-$$Nest$fgetmTabStrip(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->-$$Nest$fgetmViewPagerPageChangeListener(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->-$$Nest$fgetmViewPagerPageChangeListener(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method
