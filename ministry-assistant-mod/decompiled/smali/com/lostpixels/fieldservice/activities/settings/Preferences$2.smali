.class Lcom/lostpixels/fieldservice/activities/settings/Preferences$2;
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

.field final synthetic val$syncTime:Landroid/preference/Preference;

.field final synthetic val$syncWifi:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$2;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$2;->val$syncTime:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$2;->val$syncWifi:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 147
    check-cast p2, Ljava/lang/String;

    .line 148
    const-string p1, "auto"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$2;->val$syncTime:Landroid/preference/Preference;

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 150
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$2;->val$syncWifi:Landroid/preference/Preference;

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$2;->val$syncTime:Landroid/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 153
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$2;->val$syncWifi:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 156
    :goto_0
    sput-boolean p2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbChangedThatShouldUpdateSync:Z

    .line 157
    sput-boolean p2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbChangedThatShouldRestart:Z

    return p2
.end method
