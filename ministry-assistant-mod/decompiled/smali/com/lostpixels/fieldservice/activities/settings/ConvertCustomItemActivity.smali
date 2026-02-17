.class public Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$ScreenSlidePagerAdapter;
    }
.end annotation


# instance fields
.field private NUM_PAGES:I

.field back:Landroid/widget/Button;

.field circles:Landroid/widget/LinearLayout;

.field done:Landroid/widget/Button;

.field hasConverted:Z

.field isOpaque:Z

.field next:Landroid/widget/ImageButton;

.field pager:Landroidx/viewpager/widget/ViewPager;

.field pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field usedCustomItems:Ljava/util/List;


# direct methods
.method static bridge synthetic -$$Nest$fgetNUM_PAGES(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->NUM_PAGES:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mendTutorial(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->endTutorial()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetIndicator(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->setIndicator(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->isOpaque:Z

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->hasConverted:Z

    return-void
.end method

.method private buildCircles()V
    .locals 6

    const v0, 0x7f090173

    .line 203
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->circles:Landroid/widget/LinearLayout;

    .line 205
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 208
    :goto_0
    iget v3, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->NUM_PAGES:I

    if-ge v2, v3, :cond_0

    .line 209
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0801d4

    .line 210
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    .line 212
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 213
    invoke-virtual {v3, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 214
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->circles:Landroid/widget/LinearLayout;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->setIndicator(I)V

    return-void
.end method

.method private endTutorial()V
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->convertHoursToMinutes()V

    .line 236
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->removeCustomItemsSettings()V

    .line 237
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    .line 238
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private setIndicator(I)V
    .locals 4

    .line 221
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->NUM_PAGES:I

    if-ge p1, v0, :cond_1

    const/4 v0, 0x0

    .line 222
    :goto_0
    iget v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->NUM_PAGES:I

    if-ge v0, v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->circles:Landroid/widget/LinearLayout;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-ne v0, p1, :cond_0

    .line 225
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 227
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-static {p1}, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected convertHoursToMinutes()V
    .locals 7

    .line 252
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->hasConverted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->hasConverted:Z

    .line 255
    invoke-static {p0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->getRealmInstance(Landroid/content/Context;)Lio/realm/Realm;

    move-result-object v3

    .line 256
    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom1()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    :cond_1
    const/4 v2, 0x0

    .line 258
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom2()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 259
    :goto_0
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom3()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 261
    :goto_1
    new-instance v1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$5;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$5;-><init>(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;Lio/realm/Realm;ZZZ)V

    invoke-static {v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method getUsedCustomItems()Ljava/util/List;
    .locals 4

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 191
    const-string v2, "showCustom1"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 192
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    const-string v2, "showCustom2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 195
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_1
    const-string v2, "showCustom3"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 68
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    .line 70
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 72
    new-instance p1, Landroid/app/ActivityManager$TaskDescription;

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->getThemeColor(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p1, v0, v0, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 76
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 77
    const-string v0, "showCustom1"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 80
    const-string v2, "showCustom2"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 83
    :cond_0
    const-string v2, "showCustom3"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->removeCustomItemsSettings()V

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 92
    :cond_2
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->NUM_PAGES:I

    const p1, 0x7f0c0029

    .line 94
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 96
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->getUsedCustomItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->usedCustomItems:Ljava/util/List;

    const p1, 0x7f0900c2

    .line 98
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->back:Landroid/widget/Button;

    const/16 v0, 0x8

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->back:Landroid/widget/Button;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$1;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$1;-><init>(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090419

    .line 107
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->next:Landroid/widget/ImageButton;

    .line 108
    new-instance v2, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$2;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$2;-><init>(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901c7

    .line 115
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->done:Landroid/widget/Button;

    .line 116
    new-instance v2, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$3;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$3;-><init>(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->usedCustomItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 125
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->back:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->next:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->done:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const p1, 0x7f090431

    .line 130
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 131
    new-instance p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$ScreenSlidePagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$ScreenSlidePagerAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;Landroidx/fragment/app/FragmentManager;)V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 132
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 133
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;-><init>(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 176
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->buildCircles()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 181
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 182
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    :cond_0
    return-void
.end method

.method protected removeCustomItemsSettings()V
    .locals 2

    .line 279
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 280
    const-string v1, "showCustom1"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    const-string v1, "showCustom2"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    const-string v1, "showCustom3"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 283
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
