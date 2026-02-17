.class Lcom/lostpixels/fieldservice/activities/settings/Preferences$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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

    .line 601
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$15;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13

    .line 603
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$15;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    const-string v0, "SHARED_PREFERENCES_AUTHENTICATED_USER_PERSISTER"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 604
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 605
    new-array v6, v1, [Ljava/lang/String;

    .line 606
    new-instance v2, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$15;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    new-instance v4, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;

    invoke-direct {v4, v3}, Lcom/pierfrancescosoffritti/webbasedoauth/SharedPreferencesCredentialPersister;-><init>(Landroid/content/Context;)V

    const-string v11, ""

    const-string v12, ""

    const-string v5, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    invoke-direct/range {v2 .. v12}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;-><init>(Landroid/app/Activity;Lcom/pierfrancescosoffritti/webbasedoauth/CredentialPersister;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {v2}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->logout()V

    .line 610
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 611
    new-instance v0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$15$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$15$1;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences$15;)V

    invoke-virtual {p1, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 617
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$15;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    const v0, 0x7f12004f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1
.end method
