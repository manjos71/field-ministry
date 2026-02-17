.class public Lcom/lostpixels/fieldservice/activities/TutorialDialog;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/stepstone/stepper/StepperLayout$StepperListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/TutorialDialog$MyStepperAdapter;
    }
.end annotation


# instance fields
.field private mStepperLayout:Lcom/stepstone/stepper/StepperLayout;

.field toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-static {p1}, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onCompleted(Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->setTheme(Landroid/app/Activity;)Z

    .line 53
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance p1, Landroid/app/ActivityManager$TaskDescription;

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->getThemeColor(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p1, v0, v0, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 55
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 56
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->installExceptionHandler()V

    .line 57
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->setLanguage(Landroid/app/Activity;)V

    const p1, 0x7f0c0160

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getSystemBarColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const p1, 0x7f090515

    .line 66
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/stepstone/stepper/StepperLayout;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/TutorialDialog;->mStepperLayout:Lcom/stepstone/stepper/StepperLayout;

    .line 67
    invoke-virtual {p1, p0}, Lcom/stepstone/stepper/StepperLayout;->setListener(Lcom/stepstone/stepper/StepperLayout$StepperListener;)V

    .line 68
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/TutorialDialog;->mStepperLayout:Lcom/stepstone/stepper/StepperLayout;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/TutorialDialog$MyStepperAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/lostpixels/fieldservice/activities/TutorialDialog$MyStepperAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/TutorialDialog;Landroidx/fragment/app/FragmentManager;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/stepstone/stepper/StepperLayout;->setAdapter(Lcom/stepstone/stepper/adapter/StepAdapter;)V

    const p1, 0x7f0901a0

    .line 71
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/TutorialDialog;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfImported(Landroid/app/Activity;)Z

    .line 41
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public onReturn()V
    .locals 0

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStepSelected(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 115
    :pswitch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/TutorialDialog;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f1205b8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 112
    :pswitch_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/TutorialDialog;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f1205b1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 109
    :pswitch_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/TutorialDialog;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f1205ab

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 106
    :pswitch_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/TutorialDialog;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f1205a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 103
    :pswitch_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/TutorialDialog;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f12059d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 99
    :pswitch_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/TutorialDialog;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f120592

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 95
    :pswitch_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/TutorialDialog;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f12058f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
