.class public abstract Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;
.super Lcom/lostpixels/fieldservice/activities/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

.field endX:F

.field endY:F

.field public mClickable:Z

.field protected mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

.field protected mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field protected mDrawerView:Landroid/view/View;

.field private final mEdgeSize:I

.field private mPeekDrawer:Z

.field private mbFinishActivity:Z

.field private mbFirstPage:Z

.field protected mbIsActivityInFront:Z

.field private mbIsExiting:Z

.field protected mbIsNotificationActivity:Z

.field protected mbRestart:Z

.field private mbUpdateMenuText:Z

.field private mbUseMenuDrawer:Z

.field private final miLayout:I

.field private mtxtProfileType:Landroid/widget/TextView;

.field private mtxtPublisherName:Landroid/widget/TextView;

.field sensitivity:F

.field startX:F

.field startY:F


# direct methods
.method public static synthetic $r8$lambda$D0vLbzvsQm7pwUaMTt_ZhaVuo1I(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 421
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 425
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 427
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 428
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 424
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 431
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method public static synthetic $r8$lambda$lEnxasWu3X8YxjqbvdW8kYDsxsU(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 406
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 410
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 412
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 413
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 409
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 415
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPeekDrawer(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mPeekDrawer:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmbFinishActivity(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbFinishActivity:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmbFirstPage(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbFirstPage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmbUpdateMenuText(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbUpdateMenuText:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmtxtProfileType(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mtxtProfileType:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmtxtPublisherName(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mtxtPublisherName:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPeekDrawer(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mPeekDrawer:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmbUpdateMenuText(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbUpdateMenuText:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetProfile(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->getProfile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 112
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mClickable:Z

    const/4 v1, 0x0

    .line 96
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbIsActivityInFront:Z

    .line 97
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbIsNotificationActivity:Z

    const/high16 v2, 0x42480000    # 50.0f

    .line 100
    iput v2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->sensitivity:F

    .line 106
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbFirstPage:Z

    .line 108
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbIsExiting:Z

    .line 109
    iput v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mEdgeSize:I

    .line 110
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbUpdateMenuText:Z

    .line 113
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbUseMenuDrawer:Z

    .line 114
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->miLayout:I

    .line 115
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbFinishActivity:Z

    return-void
.end method

.method private getProfile()Ljava/lang/String;
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    const/4 v2, 0x2

    .line 134
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v2

    .line 135
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v3

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v3

    .line 137
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isAuxiliary(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v0, 0x7f12036e

    .line 138
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v4

    if-eqz v4, :cond_1

    if-gt v3, v2, :cond_1

    const v0, 0x7f1204a8

    .line 140
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isBethelite(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f12037b

    .line 142
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :cond_2
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneer()Z

    move-result v0

    if-eqz v0, :cond_3

    if-gt v3, v2, :cond_3

    const v0, 0x7f1204f3

    .line 144
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :cond_3
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isMissionary()Z

    move-result v0

    if-eqz v0, :cond_4

    if-gt v3, v2, :cond_4

    const v0, 0x7f120446

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :cond_4
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isCircuitOversser()Z

    move-result v0

    if-eqz v0, :cond_5

    if-gt v3, v2, :cond_5

    const v0, 0x7f12039a

    .line 148
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const v0, 0x7f12049e

    .line 150
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 152
    :cond_6
    const-string v0, ""

    return-object v0
.end method

.method private showPassword()V
    .locals 5

    .line 530
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbIsExiting:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lostpixels/fieldservice/dialogs/PatternLockDlg;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 531
    invoke-static {p0, v0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/SecurityPrefs;->setAutoSavePattern(Landroid/content/Context;Z)V

    .line 534
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1200a4

    .line 535
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "selectedTheme"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f130011

    goto :goto_0

    :cond_0
    const v0, 0x7f130010

    .line 541
    :goto_0
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    const/4 v3, 0x0

    const-class v4, Lcom/lostpixels/fieldservice/dialogs/PatternLockDlg;

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 543
    sget-object v2, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_THEME:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x536

    .line 544
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected addToReport()V
    .locals 2

    .line 663
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x10e1

    .line 664
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 444
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbFirstPage:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_5

    .line 445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 452
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->endX:F

    .line 453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->endY:F

    .line 455
    iget v3, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->startY:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->sensitivity:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    .line 457
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->endX:F

    iget v4, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->startX:F

    sub-float/2addr v0, v4

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    .line 458
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 459
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_0

    .line 470
    :cond_2
    :goto_1
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->startX:F

    iget v3, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->endX:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->sensitivity:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    .line 471
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 472
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    .line 474
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 475
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 448
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->startX:F

    .line 449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->startY:F

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    return v1

    .line 486
    :cond_6
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/16 v0, 0x10e1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_9

    .line 686
    const-string v0, "Session"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 687
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->hasComment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    const v0, 0x7f12035a

    .line 690
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 692
    :cond_1
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x536

    if-ne p1, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 702
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbIsExiting:Z

    const v1, 0x7f1200c7

    .line 704
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 705
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 707
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 708
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 698
    :cond_4
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/utils/PasswordHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->passwordCorrect()V

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0x537

    if-ne p1, v0, :cond_8

    .line 713
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbChangedThatShouldUpdateSync:Z

    if-eqz v0, :cond_6

    .line 714
    sput-boolean v2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbChangedThatShouldUpdateSync:Z

    .line 715
    sput-boolean v2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbChangedThatShouldRestart:Z

    .line 716
    invoke-static {p0, v2}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->setupSyncDevices(Landroid/content/Context;Z)V

    goto :goto_0

    .line 718
    :cond_6
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetCards()V

    .line 719
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 720
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    .line 722
    :goto_0
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetCards()V

    .line 723
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/utils/PasswordHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->reset(Landroid/content/Context;)V

    .line 724
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbChangedThatShouldRestart:Z

    if-eqz v0, :cond_7

    .line 725
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 726
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 725
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 727
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 728
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 729
    sput-boolean v2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbChangedThatShouldRestart:Z

    .line 733
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 736
    invoke-static {p0, v2}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->setupServiceNotification(Landroid/content/Context;Z)V

    .line 737
    invoke-static {p0, v2}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->setupVisitsForTodayNotification(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_8
    const/16 v0, 0x538

    if-ne p1, v0, :cond_9

    const v0, 0x7f090452

    .line 739
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 740
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getInstance()Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getProfileImage(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 742
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 746
    :cond_9
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    return-void

    .line 553
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 558
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mClickable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const p1, 0x7f120515

    .line 559
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 563
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "android.intent.action.VIEW"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 628
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x538

    .line 629
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 630
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p1, :cond_2

    .line 631
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto/16 :goto_1

    .line 601
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    const-string v0, "https://lostpixels.one/ministryassistant/#hfaq-post-10"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 622
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x537

    .line 623
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 624
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p1, :cond_2

    .line 625
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto/16 :goto_1

    .line 615
    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 616
    const-string v0, "https://lostpixels.one/ministryassistant/privacy-policy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 565
    :sswitch_4
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120064

    .line 566
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1200ed

    .line 567
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1201d0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12047d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 568
    new-instance v1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$3;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$3;-><init>(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 596
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 597
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p1, :cond_2

    .line 598
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto/16 :goto_1

    .line 605
    :sswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    const-string v0, "\n\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1200ee

    .line 608
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "https://lostpixels.one/ministryassistant"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Send feedback"

    invoke-static {v2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f120436

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getSoftwareVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "pixelslost@gmail.com"

    invoke-static {p0, v0, p1, v2, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendStringAsEMail(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 619
    :sswitch_6
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    .line 634
    :sswitch_7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/MinistryAssistant;->hasPermissionToTrack(Landroid/app/Application;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 635
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 636
    const-string v0, "item_id"

    const-string v1, "AddToReport_Slideout"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v0, "item_name"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v0, "content_type"

    const-string v1, "action"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->getTracker()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    const-string v1, "select_content"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 641
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->addToReport()V

    .line 642
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p1, :cond_2

    .line 643
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    .line 649
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->waitForIO()V

    .line 651
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 653
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :goto_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p1, :cond_3

    .line 656
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900e4 -> :sswitch_7
        0x7f0902ab -> :sswitch_6
        0x7f0902af -> :sswitch_5
        0x7f0902b2 -> :sswitch_4
        0x7f0902b7 -> :sswitch_3
        0x7f0902ba -> :sswitch_2
        0x7f0902bd -> :sswitch_1
        0x7f090451 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 204
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 205
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbRestart:Z

    .line 214
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 215
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isDebugBuild(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 219
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    const-string v1, "CurrentAtivity"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 224
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->installExceptionHandler()V

    .line 225
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->setLanguage(Landroid/app/Activity;)V

    .line 227
    iget p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->miLayout:I

    if-eqz p1, :cond_1

    .line 228
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 230
    :cond_1
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbFirstPage:Z

    if-eqz p1, :cond_2

    const/high16 p1, 0x42480000    # 50.0f

    .line 231
    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->pxFromDp(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->sensitivity:F

    :cond_2
    const p1, 0x7f0901a0

    .line 236
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroidx/appcompat/widget/Toolbar;

    if-eqz v5, :cond_3

    .line 238
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    :cond_3
    const p1, 0x7f0900d2

    .line 241
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    .line 245
    new-instance p1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    const v2, 0x7f12040e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080246

    invoke-direct {p1, v2, v3}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;-><init>(Ljava/lang/String;I)V

    .line 246
    new-instance v2, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    const v3, 0x7f120562

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08024a

    invoke-direct {v2, v3, v4}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;-><init>(Ljava/lang/String;I)V

    .line 247
    new-instance v3, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    const v4, 0x7f120171

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f08024e

    invoke-direct {v3, v4, v6}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;-><init>(Ljava/lang/String;I)V

    .line 248
    new-instance v4, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    const v6, 0x7f1204d5

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080256

    invoke-direct {v4, v6, v7}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;-><init>(Ljava/lang/String;I)V

    .line 249
    new-instance v6, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;

    const v7, 0x7f12017c

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f08018c

    invoke-direct {v6, v7, v8}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;-><init>(Ljava/lang/String;I)V

    .line 251
    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    invoke-virtual {v7, p1}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->addItem(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;)V

    .line 252
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    invoke-virtual {p1, v4}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->addItem(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;)V

    .line 253
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    invoke-virtual {p1, v3}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->addItem(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;)V

    .line 254
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    invoke-virtual {p1, v2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->addItem(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;)V

    .line 255
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    invoke-virtual {p1, v6}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->addItem(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigationItem;)V

    .line 257
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/OpenSans-SemiBold.ttf"

    invoke-static {v2, v3}, Lio/github/inflationx/calligraphy3/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setTitleTypeface(Landroid/graphics/Typeface;)V

    .line 259
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setAccentColor(I)V

    .line 260
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    sget-object v2, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->ALWAYS_SHOW:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    invoke-virtual {p1, v2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setTitleState(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;)V

    .line 261
    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->isLightTheme(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 262
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    const v2, -0xbbbbbc

    invoke-virtual {p1, v2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setDefaultBackgroundColor(I)V

    .line 263
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setColoredModeColors(II)V

    .line 264
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    invoke-virtual {p1, v3}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setInactiveColor(I)V

    .line 266
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    invoke-virtual {p1, v1}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setForceTint(Z)V

    .line 267
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {p1, v2, v2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setTitleTextSizeInSp(FF)V

    .line 269
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;-><init>(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)V

    invoke-virtual {p1, v2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setOnTabSelectedListener(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnTabSelectedListener;)V

    :cond_5
    const p1, 0x7f0901d6

    .line 318
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    .line 319
    :cond_6
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbUseMenuDrawer:Z

    if-eqz v0, :cond_8

    .line 324
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x7f04015d

    .line 326
    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 327
    iget p1, p1, Landroid/util/TypedValue;->data:I

    const/4 v0, 0x3

    .line 329
    new-array v0, v0, [F

    .line 330
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x2

    .line 331
    aget v1, v0, p1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v2

    aput v1, v0, p1

    .line 332
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    const v0, 0x7f090359

    .line 334
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerView:Landroid/view/View;

    .line 336
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setStatusBarBackgroundColor(I)V

    .line 337
    new-instance v1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    const v6, 0x7f12047e

    const v7, 0x7f12039e

    move-object v3, p0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;-><init>(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    iput-object v1, v2, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 373
    iget-object p1, v2, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    const p1, 0x7f0902b2

    .line 376
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902bd

    .line 377
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902af

    .line 378
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902b7

    .line 379
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902ab

    .line 380
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902ba

    .line 381
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900e4

    .line 382
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090451

    .line 385
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 386
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getPrimaryColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const p1, 0x7f090452

    .line 388
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 389
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getInstance()Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getProfileImage(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 391
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    const p1, 0x7f090454

    .line 394
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mtxtProfileType:Landroid/widget/TextView;

    .line 395
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->getProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->getProfile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const v0, 0x7f120457

    .line 400
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reportName"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f090453

    .line 401
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mtxtPublisherName:Landroid/widget/TextView;

    .line 402
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    new-instance p1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v5, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    goto :goto_1

    :cond_8
    move-object v2, p0

    .line 418
    iget-boolean p1, v2, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbIsNotificationActivity:Z

    if-nez p1, :cond_9

    .line 420
    new-instance p1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v5, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 434
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 435
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getSystemBarColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_9
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 670
    invoke-static {}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->cancelAllCroutons()V

    .line 671
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 676
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbIsActivityInFront:Z

    .line 678
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 198
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 491
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfImported(Landroid/app/Activity;)Z

    .line 492
    invoke-static {}, Lcom/lostpixels/fieldservice/MinistryAssistant;->updateUseTime()V

    .line 495
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    const-string v1, "CurrentAtivity"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v0, 0x1

    .line 500
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbIsActivityInFront:Z

    .line 502
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbRestart:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbIsNotificationActivity:Z

    if-nez v1, :cond_1

    .line 503
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/utils/PasswordHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->shouldShowPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->showPassword()V

    goto :goto_1

    .line 506
    :cond_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/utils/PasswordHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->passwordCorrect()V

    .line 508
    :goto_1
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbIsExiting:Z

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    if-eqz v1, :cond_7

    .line 512
    instance-of v3, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    if-eqz v3, :cond_2

    .line 513
    invoke-virtual {v1, v2, v2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setCurrentItem(IZ)V

    goto :goto_3

    .line 514
    :cond_2
    instance-of v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    if-eqz v3, :cond_3

    const/4 v0, 0x3

    .line 515
    invoke-virtual {v1, v0, v2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setCurrentItem(IZ)V

    goto :goto_3

    .line 516
    :cond_3
    instance-of v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    if-eqz v3, :cond_4

    const/4 v0, 0x2

    .line 517
    invoke-virtual {v1, v0, v2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setCurrentItem(IZ)V

    goto :goto_3

    .line 518
    :cond_4
    instance-of v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;

    if-nez v3, :cond_6

    instance-of v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    if-eqz v3, :cond_5

    goto :goto_2

    .line 521
    :cond_5
    instance-of v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    .line 522
    invoke-virtual {v1, v0, v2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setCurrentItem(IZ)V

    goto :goto_3

    .line 520
    :cond_6
    :goto_2
    invoke-virtual {v1, v0, v2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setCurrentItem(IZ)V

    .line 526
    :cond_7
    :goto_3
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->onResume()V

    return-void
.end method

.method public setFinishActivity(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbFinishActivity:Z

    return-void
.end method

.method protected setIfFirstPage()V
    .locals 1

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbFirstPage:Z

    return-void
.end method

.method protected transferStartPauseTime()V
    .locals 15

    .line 165
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    const-string v1, "ServiceTimer"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 167
    const-string v6, "PauseTimer"

    invoke-interface {v0, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 168
    const-string v9, "IsRBCTimer"

    const/4 v10, 0x0

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const/4 v12, 0x1

    .line 169
    const-string v13, "PeekDrawer"

    invoke-interface {v0, v13, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 172
    const-string v14, "MyPrefsSettings"

    invoke-virtual {p0, v14, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 173
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    if-eqz v11, :cond_0

    .line 176
    invoke-interface {v10, v9, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    if-nez v12, :cond_1

    .line 179
    invoke-interface {v10, v13, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1
    cmp-long v11, v4, v2

    if-eqz v11, :cond_2

    .line 181
    invoke-interface {v10, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_2
    cmp-long v4, v7, v2

    if-eqz v4, :cond_3

    .line 183
    invoke-interface {v10, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 184
    :cond_3
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 188
    invoke-interface {v0, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v0, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
