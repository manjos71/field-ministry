.class Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;


# direct methods
.method constructor <init>(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 798
    sget-object p1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_CREATE_PATTERN:Ljava/lang/String;

    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 799
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {p1}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$300(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    move-result-object p1

    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->CONTINUE:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    if-ne p1, v0, :cond_0

    .line 800
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->DONE:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    invoke-static {p1, v0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$302(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;)Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    .line 801
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    iget-object p1, p1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    invoke-virtual {p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->clearPattern()V

    .line 802
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {p1}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$100(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_msg_redraw_pattern_to_confirm:I

    .line 803
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 804
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {p1}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$200(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Landroid/widget/Button;

    move-result-object p1

    sget v0, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_cmd_confirm:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 805
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {p1}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$200(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 807
    :cond_0
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharArrayExtra(Ljava/lang/String;)[C

    move-result-object p1

    .line 809
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$700(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0, p1}, Lgroup/pals/android/lib/ui/lockpattern/prefs/SecurityPrefs;->setPattern(Landroid/content/Context;[C)V

    .line 812
    :cond_1
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0, p1}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$800(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;[C)V

    return-void

    .line 815
    :cond_2
    sget-object p1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 822
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_INTENT_ACTIVITY_FORGOT_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 824
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$600(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;I)V

    :cond_3
    return-void
.end method
