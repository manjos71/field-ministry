.class public abstract Lgroup/pals/android/lib/ui/lockpattern/prefs/DisplayPrefs;
.super Lgroup/pals/android/lib/ui/lockpattern/prefs/Prefs;
.source "SourceFile"


# direct methods
.method public static getCaptchaWiredDots(Landroid/content/Context;)I
    .locals 3

    .line 135
    invoke-static {p0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/Prefs;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_pkey_display_captcha_wired_dots:I

    .line 137
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lgroup/pals/android/lib/ui/lockpattern/R$integer;->alp_pkey_display_captcha_wired_dots_default:I

    .line 139
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 136
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getMaxRetry(Landroid/content/Context;)I
    .locals 3

    .line 103
    invoke-static {p0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/Prefs;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_pkey_display_max_retry:I

    .line 104
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lgroup/pals/android/lib/ui/lockpattern/R$integer;->alp_pkey_display_max_retry_default:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 103
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getMinWiredDots(Landroid/content/Context;)I
    .locals 3

    .line 69
    invoke-static {p0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/Prefs;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_pkey_display_min_wired_dots:I

    .line 70
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lgroup/pals/android/lib/ui/lockpattern/R$integer;->alp_pkey_display_min_wired_dots_default:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 69
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isStealthMode(Landroid/content/Context;)Z
    .locals 3

    .line 38
    invoke-static {p0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/Prefs;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_pkey_display_stealth_mode:I

    .line 39
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lgroup/pals/android/lib/ui/lockpattern/R$bool;->alp_pkey_display_stealth_mode_default:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 38
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
