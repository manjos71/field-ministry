.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private final mPager:Landroidx/viewpager/widget/ViewPager;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 1080
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    .line 1081
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 1082
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 1083
    invoke-virtual {p3, p0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 1084
    invoke-virtual {p3, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1162
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmYearFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    move-result-object p1

    return-object p1

    .line 1160
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmMonthFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    move-result-object p1

    return-object p1

    .line 1150
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmbIsCalendarView(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1151
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmCalendarFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1152
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;-><init>()V

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fputmCalendarFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)V

    .line 1153
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmCalendarFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    move-result-object p1

    return-object p1

    .line 1155
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmDailyFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    move-result-object p1

    if-nez p1, :cond_5

    .line 1156
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;-><init>()V

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fputmDailyFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;)V

    .line 1157
    :cond_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmDailyFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    if-nez p1, :cond_1

    .line 1104
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fgetmbIsCalendarView(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0xa

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1109
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 1094
    instance-of v0, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1097
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x2

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1122
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1120
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    const v0, 0x7f1204dc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1118
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    const v0, 0x7f12044b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1116
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    const v0, 0x7f1204d3

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
