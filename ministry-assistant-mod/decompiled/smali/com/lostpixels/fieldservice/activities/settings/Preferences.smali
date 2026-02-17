.class public Lcom/lostpixels/fieldservice/activities/settings/Preferences;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# instance fields
.field bResetAbb:Z

.field realm:Lio/realm/Realm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences;->bResetAbb:Z

    return-void
.end method

.method private overwriteAbbreviations()V
    .locals 7

    .line 77
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 80
    aget-object v3, v1, v2

    const-string v4, "abbrNI"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x1

    .line 81
    aget-object v4, v1, v3

    const-string v5, "abbrNT"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v4, 0x2

    .line 82
    aget-object v5, v1, v4

    const-string v6, "abbrLetter"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v5, 0x3

    .line 83
    aget-object v5, v1, v5

    const-string v6, "abbrEmpty"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v5, 0x4

    .line 84
    aget-object v5, v1, v5

    const-string v6, "abbrOtherLang"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v5, 0x5

    .line 85
    aget-object v5, v1, v5

    const-string v6, "abbrNotAtHome"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v5, 0x6

    .line 86
    aget-object v5, v1, v5

    const-string v6, "abbrDoNotCall"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v5, 0x7

    .line 87
    aget-object v5, v1, v5

    const-string v6, "abbrNoTrespassing"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v5, 0x8

    .line 88
    aget-object v1, v1, v5

    const-string v5, "abbrLockedDoor"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f030002

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 91
    const-string v5, "abbrMan"

    aget-object v2, v1, v2

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v2, "abbrWoman"

    aget-object v3, v1, v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v2, "abbrChild"

    aget-object v1, v1, v4

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const v1, 0x7f120295

    .line 94
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "abbrCouple"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, -0x1

    .line 673
    const-string v1, "checkUsePassword"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    if-ne p2, v0, :cond_3

    .line 675
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 676
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 677
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getCharArrayExtra(Ljava/lang/String;)[C

    .line 679
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 680
    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 682
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/utils/PasswordHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->reset(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    if-eq p2, v0, :cond_2

    if-eqz p2, :cond_1

    if-eq p2, v3, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f1200c7

    .line 700
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 691
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 692
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 693
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 694
    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 695
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/utils/PasswordHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->reset(Landroid/content/Context;)V

    .line 704
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 112
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences;->realm:Lio/realm/Realm;

    .line 113
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    .line 115
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 117
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->setLanguage(Landroid/app/Activity;)V

    if-eqz p1, :cond_0

    .line 120
    const-string v2, "ResetAbb"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences;->bResetAbb:Z

    .line 122
    :cond_0
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences;->bResetAbb:Z

    if-eqz p1, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences;->overwriteAbbreviations()V

    :cond_1
    const p1, 0x7f150007

    .line 124
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    const p1, 0x7f12033e

    .line 126
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    const-string p1, "langPref"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    .line 129
    new-instance v2, Lcom/lostpixels/fieldservice/activities/settings/Preferences$1;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$1;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;)V

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    const-string p1, "syncMode"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 139
    const-string v3, "syncTime"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 140
    const-string v4, "checkOnlySyncWifi"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 141
    const-string v5, "manual"

    invoke-interface {v1, p1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 142
    invoke-virtual {v3, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 143
    invoke-virtual {v4, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 145
    new-instance p1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$2;

    invoke-direct {p1, p0, v3, v4}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$2;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;Landroid/preference/Preference;Landroid/preference/Preference;)V

    invoke-virtual {v2, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    new-instance p1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$3;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$3;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;)V

    invoke-virtual {v3, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    const-string p1, "whenShowMilage"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    .line 172
    new-instance v1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$4;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$4;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;)V

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    const-string p1, "checkDisableBackupIntent"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 181
    new-instance v1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$5;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$5;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;)V

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    const-string p1, "checkUsePassword"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 193
    new-instance v1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$6;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$6;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;)V

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 231
    const-string p1, "showCustom1"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 232
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 233
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 234
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 235
    :cond_2
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom1()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 236
    new-instance v1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;

    invoke-direct {v1, p0, v0, p1}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 295
    const-string p1, "showCustom2"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 296
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 297
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 298
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 299
    :cond_3
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom2()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 300
    new-instance v1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$8;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 359
    const-string p1, "showCustom3"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 360
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom3()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 361
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 362
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    :cond_4
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom3()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 364
    new-instance v1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$9;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 423
    const-string p1, "checkShowTimer"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 424
    const-string v0, "MyPrefsSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 425
    const-string v2, "prefCardsToDisplay"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    .line 426
    :cond_5
    invoke-virtual {p1, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 427
    new-instance v0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$10;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$10;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 445
    const-string p1, "prefCardsToDisplayInternal"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;

    if-eqz p1, :cond_6

    .line 447
    new-instance v0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$11;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$11;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 502
    :cond_6
    const-string p1, "cleanDir"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 504
    new-instance v0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 545
    :cond_7
    const-string p1, "cleanSearchHistory"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 547
    new-instance v0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 585
    :cond_8
    const-string p1, "clearGoogleAccount"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 587
    new-instance v0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$14;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$14;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 599
    :cond_9
    const-string p1, "clearTerritoryHelper"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 601
    new-instance v0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$15;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$15;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 626
    :cond_a
    const-string p1, "resetDialogs"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 628
    new-instance v0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$16;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$16;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 642
    :cond_b
    const-string p1, "sendErrorLogs"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 644
    new-instance v0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$17;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$17;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 654
    :cond_c
    const-string p1, "externalLocation"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 656
    const-string v0, "prefGroupLast"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_d

    .line 658
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 101
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 665
    sget-boolean v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbChangedThatShouldRestart:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 666
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 668
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 106
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 70
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences;->bResetAbb:Z

    if-eqz v0, :cond_0

    .line 72
    const-string v1, "ResetAbb"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
