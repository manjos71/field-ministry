.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$ViewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private final mPager:Landroidx/viewpager/widget/ViewPager;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 2126
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2127
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$ViewPagerAdapter;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 2128
    invoke-virtual {p2, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 2165
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2141
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 2139
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const v0, 0x7f120488

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2137
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const v0, 0x7f1201d5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2135
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const v0, 0x7f120487

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    if-nez p2, :cond_0

    .line 2154
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$msetupFragment1(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2156
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$msetupFragment2(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 2158
    :cond_1
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$msetupFragment3(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Landroid/view/View;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    .line 2159
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 2170
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
