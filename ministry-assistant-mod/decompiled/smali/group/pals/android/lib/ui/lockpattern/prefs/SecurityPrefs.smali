.class public abstract Lgroup/pals/android/lib/ui/lockpattern/prefs/SecurityPrefs;
.super Lgroup/pals/android/lib/ui/lockpattern/prefs/Prefs;
.source "SourceFile"


# direct methods
.method public static getEncrypterClass(Landroid/content/Context;)[C
    .locals 2

    .line 98
    invoke-static {p0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/Prefs;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_pkey_sys_encrypter_class:I

    .line 99
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 98
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method public static getPattern(Landroid/content/Context;)[C
    .locals 2

    .line 70
    invoke-static {p0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/Prefs;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_pkey_sys_pattern:I

    .line 71
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 70
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    .line 72
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method public static isAutoSavePattern(Landroid/content/Context;)Z
    .locals 3

    .line 38
    invoke-static {p0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/Prefs;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_pkey_sys_auto_save_pattern:I

    .line 39
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lgroup/pals/android/lib/ui/lockpattern/R$bool;->alp_pkey_sys_auto_save_pattern_default:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 38
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setAutoSavePattern(Landroid/content/Context;Z)V
    .locals 2

    .line 53
    invoke-static {p0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/Prefs;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_pkey_sys_auto_save_pattern:I

    .line 56
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 59
    invoke-static {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/prefs/SecurityPrefs;->setPattern(Landroid/content/Context;[C)V

    :cond_0
    return-void
.end method

.method public static setPattern(Landroid/content/Context;[C)V
    .locals 2

    .line 84
    invoke-static {p0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/Prefs;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_pkey_sys_pattern:I

    .line 86
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 86
    :goto_0
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 87
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
