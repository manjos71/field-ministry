.class Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$ViewPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private final mPager:Landroidx/viewpager/widget/ViewPager;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    .line 423
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 424
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$ViewPagerAdapter;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 425
    invoke-virtual {p3, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

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

    .line 462
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->-$$Nest$fgetmRestoreFragment(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;)Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    move-result-object p1

    return-object p1

    .line 460
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->-$$Nest$fgetmScheduleFragment(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;)Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    move-result-object p1

    return-object p1

    .line 458
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->-$$Nest$fgetmBackupFragment(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;)Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    move-result-object p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 438
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 436
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    const v0, 0x7f1205e1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 434
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    const v0, 0x7f1201a7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 432
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    const v0, 0x7f120179

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

    .line 449
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$ViewPagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method
