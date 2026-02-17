.class public Lcom/lostpixels/fieldservice/activities/settings/ReportDetailsSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$0h8jxkMRJ2kIdJgh1jxTcnzsUuA(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 0

    const/4 p4, 0x0

    .line 66
    invoke-virtual {p0, p4}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    const/4 p0, 0x1

    .line 67
    invoke-virtual {p1, p0}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    .line 68
    invoke-virtual {p2, p4}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    .line 69
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "ReportDensity"

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic $r8$lambda$94DLHr5tK-FuTmYVLSQHYq0gShs(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 0

    const/4 p4, 0x1

    .line 60
    invoke-virtual {p0, p4}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    const/4 p0, 0x0

    .line 61
    invoke-virtual {p1, p0}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    .line 62
    invoke-virtual {p2, p0}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    .line 63
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "ReportDensity"

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic $r8$lambda$TGIfxFOa_4WHGoNoM1KMA3HQWOk(Lcom/lostpixels/fieldservice/activities/settings/ReportDetailsSettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic $r8$lambda$sat8SiyeUfsl0fNrSJtGOSsUg3Y(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 0

    const/4 p4, 0x0

    .line 72
    invoke-virtual {p0, p4}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    .line 73
    invoke-virtual {p1, p4}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    const/4 p0, 0x1

    .line 74
    invoke-virtual {p2, p0}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    .line 75
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "ReportDensity"

    const/4 p2, 0x2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-static {p1}, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 35
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    .line 37
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 39
    new-instance p1, Landroid/app/ActivityManager$TaskDescription;

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->getThemeColor(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p1, v0, v0, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    const p1, 0x7f0c0104

    .line 42
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f090240

    .line 45
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 46
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090247

    .line 47
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    .line 48
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090242

    .line 49
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x2

    .line 50
    aget-object p1, p1, v3

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0900c6

    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    .line 53
    invoke-virtual {p1, v2}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    const v0, 0x7f0904df

    .line 54
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    const v2, 0x7f0901ba

    .line 55
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    .line 56
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 57
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "ReportDensity"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    new-instance v1, Lcom/lostpixels/fieldservice/activities/settings/ReportDetailsSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/lostpixels/fieldservice/activities/settings/ReportDetailsSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroid/content/SharedPreferences;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v1, Lcom/lostpixels/fieldservice/activities/settings/ReportDetailsSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/lostpixels/fieldservice/activities/settings/ReportDetailsSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v1, Lcom/lostpixels/fieldservice/activities/settings/ReportDetailsSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/lostpixels/fieldservice/activities/settings/ReportDetailsSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09010c

    .line 78
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/lostpixels/fieldservice/activities/settings/ReportDetailsSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/settings/ReportDetailsSettingsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/lostpixels/fieldservice/activities/settings/ReportDetailsSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
