.class Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$ViewPagerAdapter;
.super Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private final mPager:Landroidx/viewpager/widget/ViewPager;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 1185
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-direct {p0}, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;-><init>()V

    .line 1186
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$ViewPagerAdapter;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 1187
    invoke-virtual {p2, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 1210
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->setupFragmentBasic()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1212
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->setupFragmentAdvanced()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1198
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1196
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    const v0, 0x7f12035f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1194
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    const v0, 0x7f120378

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
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
