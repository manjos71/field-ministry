.class Lcom/lostpixels/fieldservice/activities/settings/Preferences$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/settings/Preferences;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$6;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 196
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$6;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/SecurityPrefs;->setAutoSavePattern(Landroid/content/Context;Z)V

    .line 197
    check-cast p2, Ljava/lang/Boolean;

    .line 199
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$6;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 200
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$6;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    const v2, 0x7f1200a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "selectedTheme"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    const-string v1, "light"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f130011

    goto :goto_0

    :cond_0
    const p1, 0x7f130010

    .line 207
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-class v1, Lcom/lostpixels/fieldservice/dialogs/PatternLockDlg;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 208
    new-instance p2, Landroid/content/Intent;

    sget-object v4, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_CREATE_PATTERN:Ljava/lang/String;

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$6;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-direct {p2, v4, v2, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_THEME:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$6;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return v3

    .line 214
    :cond_1
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$6;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 215
    const-string v4, "checkUsePassword"

    invoke-interface {p2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 218
    new-instance p2, Landroid/content/Intent;

    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$6;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-direct {p2, v0, v2, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_THEME:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$6;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return v3

    .line 226
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$6;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/utils/PasswordHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$6;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->reset(Landroid/content/Context;)V

    return v0
.end method
