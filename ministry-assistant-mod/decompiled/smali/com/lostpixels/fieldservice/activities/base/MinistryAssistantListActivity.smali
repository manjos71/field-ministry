.class public abstract Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;
.super Lcom/lostpixels/fieldservice/activities/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private mListView:Landroid/widget/ListView;

.field private mbFinishActivity:Z

.field private mbIsExiting:Z

.field protected mbRestart:Z

.field private final miLayout:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->mbIsExiting:Z

    .line 39
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->miLayout:I

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->mbFinishActivity:Z

    return-void
.end method

.method private showPassword()V
    .locals 5

    .line 140
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->mbIsExiting:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lostpixels/fieldservice/dialogs/PatternLockDlg;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 141
    invoke-static {p0, v0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/SecurityPrefs;->setAutoSavePattern(Landroid/content/Context;Z)V

    .line 143
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1200a4

    .line 144
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "selectedTheme"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f130011

    goto :goto_0

    :cond_0
    const v0, 0x7f130010

    .line 150
    :goto_0
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    const/4 v3, 0x0

    const-class v4, Lcom/lostpixels/fieldservice/dialogs/PatternLockDlg;

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    sget-object v2, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_THEME:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x536

    .line 153
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getListAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 52
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 53
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getListView()Landroid/widget/ListView;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    const v0, 0x7f09035f

    .line 45
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->mListView:Landroid/widget/ListView;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x536

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->mbIsExiting:Z

    const v1, 0x7f1200c7

    .line 169
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/utils/PasswordHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->passwordCorrect()V

    .line 178
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->mbRestart:Z

    .line 70
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->installExceptionHandler()V

    .line 72
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->setLanguage(Landroid/app/Activity;)V

    .line 74
    iget p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->miLayout:I

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getSystemBarColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const p1, 0x7f0901a0

    .line 80
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 81
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 87
    invoke-static {}, Lcom/lostpixels/fieldservice/MinistryAssistant;->updateUseTime()V

    .line 89
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->mbFinishActivity:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfImported(Landroid/app/Activity;)Z

    .line 93
    :cond_0
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

    .line 98
    :goto_0
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->mbRestart:Z

    if-nez v0, :cond_2

    .line 99
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/utils/PasswordHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->shouldShowPassword()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->showPassword()V

    goto :goto_1

    .line 102
    :cond_1
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/utils/PasswordHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->passwordCorrect()V

    :goto_1
    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->mbIsExiting:Z

    .line 106
    :cond_2
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->onResume()V

    return-void
.end method

.method protected setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
