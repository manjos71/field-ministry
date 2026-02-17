.class public abstract Lgroup/pals/android/lib/ui/lockpattern/prefs/Prefs;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final genPreferenceFilename()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "android-lockpattern"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "a6eedbe5-1cf9-4684-8134-ad4ec9f6a131"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 67
    invoke-static {}, Lgroup/pals/android/lib/ui/lockpattern/prefs/Prefs;->genPreferenceFilename()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 66
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
