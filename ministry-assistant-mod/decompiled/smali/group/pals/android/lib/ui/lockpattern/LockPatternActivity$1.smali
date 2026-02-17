.class Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;


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

    .line 718
    iput-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public onPatternCleared()V
    .locals 3

    .line 756
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    iget-object v1, v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    invoke-static {v0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$000(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 758
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_CREATE_PATTERN:Ljava/lang/String;

    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    iget-object v0, v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->setDisplayMode(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;)V

    .line 760
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$200(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 761
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$300(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    move-result-object v0

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->CONTINUE:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    if-ne v0, v1, :cond_0

    .line 762
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$100(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_msg_draw_an_unlock_pattern:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 765
    :cond_0
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$100(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_msg_redraw_pattern_to_confirm:I

    .line 766
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 768
    :cond_1
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 769
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    iget-object v0, v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->setDisplayMode(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;)V

    .line 770
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$100(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_msg_draw_pattern_to_unlock:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 772
    :cond_2
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 773
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$100(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_msg_redraw_pattern_to_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 774
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 776
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    iget-object v1, v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    sget-object v2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Animate:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2, v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->setPattern(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 2

    .line 741
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_CREATE_PATTERN:Ljava/lang/String;

    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0, p1}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$400(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;Ljava/util/List;)V

    return-void

    .line 744
    :cond_0
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0, p1}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$500(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;Ljava/util/List;)V

    return-void

    .line 747
    :cond_1
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 748
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Animate:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    iget-object v1, v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    .line 749
    invoke-virtual {v1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getDisplayMode()Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    move-result-object v1

    .line 748
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 750
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0, p1}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$500(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public onPatternStart()V
    .locals 2

    .line 722
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    iget-object v1, v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    invoke-static {v0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$000(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 723
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    iget-object v0, v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->setDisplayMode(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;)V

    .line 725
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_CREATE_PATTERN:Ljava/lang/String;

    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$100(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_msg_release_finger_when_done:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 727
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$200(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 728
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$300(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    move-result-object v0

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->CONTINUE:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    if-ne v0, v1, :cond_2

    .line 729
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void

    .line 731
    :cond_0
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$100(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_msg_draw_pattern_to_unlock:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 734
    :cond_1
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 735
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$100(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_msg_redraw_pattern_to_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method
