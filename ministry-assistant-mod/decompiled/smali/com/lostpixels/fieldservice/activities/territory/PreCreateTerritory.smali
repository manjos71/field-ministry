.class public Lcom/lostpixels/fieldservice/activities/territory/PreCreateTerritory;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;
.source "SourceFile"


# instance fields
.field private territoryCreateMethod:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0c00fe

    .line 31
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;-><init>(I)V

    return-void
.end method


# virtual methods
.method loadSettings()I
    .locals 3

    .line 100
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    const-string v1, "CREATE_TYPE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 39
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v1, 0x7f120584

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    const p1, 0x7f090496

    .line 41
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/PreCreateTerritory;->territoryCreateMethod:Landroid/widget/RadioGroup;

    .line 43
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/PreCreateTerritory;->loadSettings()I

    move-result p1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/PreCreateTerritory;->territoryCreateMethod:Landroid/widget/RadioGroup;

    const v0, 0x7f09048f

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    return-void

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/PreCreateTerritory;->territoryCreateMethod:Landroid/widget/RadioGroup;

    const v0, 0x7f090490

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    return-void

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/PreCreateTerritory;->territoryCreateMethod:Landroid/widget/RadioGroup;

    const v0, 0x7f090483

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7f120052

    const/4 v2, 0x0

    .line 58
    invoke-interface {p1, v2, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/PreCreateTerritory;->territoryCreateMethod:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x3

    .line 79
    :goto_0
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/activities/territory/PreCreateTerritory;->saveSettings(I)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    const-string v2, "CreateType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 82
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 91
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f09048f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method saveSettings(I)V
    .locals 2

    .line 95
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CREATE_TYPE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
