.class public Lcom/lostpixels/fieldservice/dialogs/PatternLockDlg;
.super Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;
.source "SourceFile"


# static fields
.field private static isRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;-><init>()V

    return-void
.end method

.method public static isActive()Z
    .locals 1

    .line 15
    sget-boolean v0, Lcom/lostpixels/fieldservice/dialogs/PatternLockDlg;->isRunning:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    .line 32
    sput-boolean v0, Lcom/lostpixels/fieldservice/dialogs/PatternLockDlg;->isRunning:Z

    .line 33
    invoke-super {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 35
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    const-string v2, "checkUseHapticFeedback"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v1, p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 20
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    .line 21
    sput-boolean v0, Lcom/lostpixels/fieldservice/dialogs/PatternLockDlg;->isRunning:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    .line 27
    sput-boolean v0, Lcom/lostpixels/fieldservice/dialogs/PatternLockDlg;->isRunning:Z

    return-void
.end method
