.class public abstract Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;
    }
.end annotation


# static fields
.field public static final ACTION_COMPARE_PATTERN:Ljava/lang/String;

.field public static final ACTION_CREATE_PATTERN:Ljava/lang/String;

.field public static final ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

.field private static final CLASSNAME:Ljava/lang/String; = "group.pals.android.lib.ui.lockpattern.LockPatternActivity"

.field public static final EXTRA_INTENT_ACTIVITY_FORGOT_PATTERN:Ljava/lang/String;

.field public static final EXTRA_PATTERN:Ljava/lang/String;

.field public static final EXTRA_PENDING_INTENT_CANCELLED:Ljava/lang/String;

.field public static final EXTRA_PENDING_INTENT_OK:Ljava/lang/String;

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String;

.field public static final EXTRA_RETRY_COUNT:Ljava/lang/String;

.field public static final EXTRA_THEME:Ljava/lang/String;


# instance fields
.field private mAutoSave:Z

.field private mBtnCancel:Landroid/widget/Button;

.field private final mBtnCancelOnClickListener:Landroid/view/View$OnClickListener;

.field private mBtnConfirm:Landroid/widget/Button;

.field private final mBtnConfirmOnClickListener:Landroid/view/View$OnClickListener;

.field private mBtnOkCmd:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

.field private mFooter:Landroid/view/View;

.field private mIntentResult:Landroid/content/Intent;

.field protected mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

.field private final mLockPatternViewListener:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;

.field private final mLockPatternViewReloader:Ljava/lang/Runnable;

.field private mMaxRetry:I

.field private mMinWiredDots:I

.field private mRetryCount:I

.field private mTextInfo:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    const-class v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".create_pattern"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_CREATE_PATTERN:Ljava/lang/String;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".compare_pattern"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".verify_captcha"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".retry_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_RETRY_COUNT:Ljava/lang/String;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".theme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_THEME:Ljava/lang/String;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".pattern"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".result_receiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_RESULT_RECEIVER:Ljava/lang/String;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".pending_intent_ok"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_PENDING_INTENT_OK:Ljava/lang/String;

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".pending_intent_cancelled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_PENDING_INTENT_CANCELLED:Ljava/lang/String;

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".intent_activity_forgot_pattern"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_INTENT_ACTIVITY_FORGOT_PATTERN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 292
    iput v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mRetryCount:I

    .line 718
    new-instance v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;

    invoke-direct {v0, p0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$1;-><init>(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)V

    iput-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternViewListener:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;

    .line 786
    new-instance v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$2;

    invoke-direct {v0, p0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$2;-><init>(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)V

    iput-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnCancelOnClickListener:Landroid/view/View$OnClickListener;

    .line 794
    new-instance v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;

    invoke-direct {v0, p0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$3;-><init>(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)V

    iput-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnConfirmOnClickListener:Landroid/view/View$OnClickListener;

    .line 832
    new-instance v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$4;

    invoke-direct {v0, p0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$4;-><init>(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)V

    iput-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternViewReloader:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 78
    iget-object p0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternViewReloader:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Landroid/widget/TextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Landroid/widget/Button;
    .locals 0

    .line 78
    iget-object p0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;
    .locals 0

    .line 78
    iget-object p0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnOkCmd:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    return-object p0
.end method

.method static synthetic access$302(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;)Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;
    .locals 0

    .line 78
    iput-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnOkCmd:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    return-object p1
.end method

.method static synthetic access$400(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;Ljava/util/List;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->doCheckAndCreatePattern(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;Ljava/util/List;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->doComparePattern(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->finishWithNegativeResult(I)V

    return-void
.end method

.method static synthetic access$700(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mAutoSave:Z

    return p0
.end method

.method static synthetic access$800(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;[C)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->finishWithResultOk([C)V

    return-void
.end method

.method static synthetic access$900(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;
    .locals 0

    .line 78
    iget-object p0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternViewListener:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;

    return-object p0
.end method

.method private doCheckAndCreatePattern(Ljava/util/List;)V
    .locals 8

    .line 571
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mMinWiredDots:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3e8

    if-ge v0, v1, :cond_0

    .line 572
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Wrong:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->setDisplayMode(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;)V

    .line 573
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$plurals;->alp_pmsg_connect_x_dots:I

    iget v6, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mMinWiredDots:I

    .line 575
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v2

    .line 573
    invoke-virtual {v0, v1, v6, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternViewReloader:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 581
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharArrayExtra(Ljava/lang/String;)[C

    move-result-object v0

    .line 589
    invoke-static {p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternUtils;->patternToSha1(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 587
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 591
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    sget v0, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_msg_your_new_unlock_pattern:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 592
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 594
    :cond_1
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    sget v0, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_msg_redraw_pattern_to_confirm:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 595
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 596
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Wrong:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->setDisplayMode(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;)V

    .line 597
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternViewReloader:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 601
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 604
    invoke-static {p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternUtils;->patternToSha1(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 605
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 601
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[C)Landroid/content/Intent;

    .line 606
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    sget v0, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_msg_pattern_recorded:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 607
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private doComparePattern(Ljava/util/List;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 527
    :cond_0
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 528
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    .line 529
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharArrayExtra(Ljava/lang/String;)[C

    move-result-object v0

    if-nez v0, :cond_1

    .line 531
    invoke-static {p0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/SecurityPrefs;->getPattern(Landroid/content/Context;)[C

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    .line 538
    invoke-static {p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternUtils;->patternToSha1(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 537
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v1

    goto :goto_0

    .line 542
    :cond_2
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 543
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    const/4 p1, 0x0

    .line 548
    invoke-direct {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->finishWithResultOk([C)V

    return-void

    .line 550
    :cond_4
    iget p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mRetryCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mRetryCount:I

    .line 551
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mIntentResult:Landroid/content/Intent;

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_RETRY_COUNT:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    iget p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mRetryCount:I

    iget v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mMaxRetry:I

    if-lt p1, v0, :cond_5

    const/4 p1, 0x2

    .line 554
    invoke-direct {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->finishWithNegativeResult(I)V

    return-void

    .line 556
    :cond_5
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Wrong:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->setDisplayMode(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;)V

    .line 557
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    sget v0, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_msg_try_again:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 558
    iget-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternViewReloader:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private finishWithNegativeResult(I)V
    .locals 4

    .line 675
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mIntentResult:Landroid/content/Intent;

    sget-object v2, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_RETRY_COUNT:Ljava/lang/String;

    iget v3, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mRetryCount:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 678
    :cond_0
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mIntentResult:Landroid/content/Intent;

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 683
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_RESULT_RECEIVER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    if-eqz v1, :cond_2

    .line 687
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 689
    sget-object v2, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_RETRY_COUNT:Ljava/lang/String;

    iget v3, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mRetryCount:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 691
    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 697
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_PENDING_INTENT_CANCELLED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 701
    :try_start_0
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mIntentResult:Landroid/content/Intent;

    invoke-virtual {v0, p0, p1, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    :catchall_0
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private finishWithResultOk([C)V
    .locals 5

    .line 619
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_CREATE_PATTERN:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mIntentResult:Landroid/content/Intent;

    sget-object v2, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[C)Landroid/content/Intent;

    goto :goto_0

    .line 625
    :cond_0
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mIntentResult:Landroid/content/Intent;

    sget-object v2, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_RETRY_COUNT:Ljava/lang/String;

    iget v3, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 628
    :goto_0
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mIntentResult:Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 633
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v3, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_RESULT_RECEIVER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    if-eqz v1, :cond_2

    .line 636
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 637
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto :goto_1

    .line 644
    :cond_1
    sget-object p1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_RETRY_COUNT:Ljava/lang/String;

    iget v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 646
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 652
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_PENDING_INTENT_OK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    if-eqz p1, :cond_3

    .line 656
    :try_start_0
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mIntentResult:Landroid/content/Intent;

    invoke-virtual {p1, p0, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    :catchall_0
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private initContentView()V
    .locals 9

    .line 381
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 382
    :goto_0
    iget-object v2, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 384
    :goto_1
    iget-object v3, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    if-eqz v3, :cond_2

    .line 385
    invoke-virtual {v3}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getDisplayMode()Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    .line 386
    :goto_2
    iget-object v4, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    if-eqz v4, :cond_3

    .line 387
    invoke-virtual {v4}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->getPattern()Ljava/util/List;

    move-result-object v1

    .line 389
    :cond_3
    sget v4, Lgroup/pals/android/lib/ui/lockpattern/R$layout;->alp_lock_pattern_activity:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 390
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v4}, Lgroup/pals/android/lib/ui/lockpattern/util/UI;->adjustDialogSizeForLargeScreens(Landroid/view/Window;)V

    .line 392
    sget v4, Lgroup/pals/android/lib/ui/lockpattern/R$id;->alp_textview_info:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    .line 393
    sget v4, Lgroup/pals/android/lib/ui/lockpattern/R$id;->alp_view_lock_pattern:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    iput-object v4, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    .line 395
    sget v4, Lgroup/pals/android/lib/ui/lockpattern/R$id;->alp_viewgroup_footer:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mFooter:Landroid/view/View;

    .line 396
    sget v4, Lgroup/pals/android/lib/ui/lockpattern/R$id;->alp_button_cancel:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnCancel:Landroid/widget/Button;

    .line 397
    sget v4, Lgroup/pals/android/lib/ui/lockpattern/R$id;->alp_button_confirm:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    goto :goto_3

    .line 407
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lgroup/pals/android/lib/ui/lockpattern/R$dimen;->alp_lockpatternview_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 409
    iget-object v5, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 410
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 411
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 412
    iget-object v4, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 424
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "haptic_feedback_enabled"

    .line 423
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :catchall_0
    nop

    :cond_5
    const/4 v6, 0x0

    .line 431
    :goto_4
    iget-object v7, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    invoke-virtual {v7, v6}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 433
    iget-object v6, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    invoke-static {p0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/DisplayPrefs;->isStealthMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

    .line 434
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x1

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    .line 433
    :goto_5
    invoke-virtual {v6, v7}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->setInStealthMode(Z)V

    .line 435
    iget-object v6, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    iget-object v7, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternViewListener:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v6, v7}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->setOnPatternListener(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;)V

    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    .line 436
    sget-object v6, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

    .line 437
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 438
    iget-object v6, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    invoke-virtual {v6, v3, v1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->setPattern(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 444
    :cond_7
    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_CREATE_PATTERN:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 445
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnCancel:Landroid/widget/Button;

    iget-object v3, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnCancelOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    iget-object v3, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnConfirmOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mFooter:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_8

    .line 452
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 454
    :cond_8
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_msg_draw_an_unlock_pattern:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 459
    :goto_6
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnOkCmd:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    if-nez v0, :cond_9

    .line 460
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->CONTINUE:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    iput-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnOkCmd:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    .line 461
    :cond_9
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$5;->$SwitchMap$group$pals$android$lib$ui$lockpattern$LockPatternActivity$ButtonOkCommand:[I

    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnOkCmd:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_7

    .line 466
    :cond_a
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_cmd_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7

    .line 463
    :cond_b
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_cmd_continue:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_7
    if-eqz v2, :cond_10

    .line 475
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_a

    .line 477
    :cond_c
    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 478
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 479
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_msg_draw_pattern_to_unlock:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    .line 481
    :cond_d
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    :goto_8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_INTENT_ACTIVITY_FORGOT_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 483
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnConfirmOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_cmd_forgot_pattern:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 485
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 486
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 489
    :cond_e
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 490
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    sget v1, Lgroup/pals/android/lib/ui/lockpattern/R$string;->alp_msg_redraw_pattern_to_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 498
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 499
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 500
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_9

    .line 502
    :cond_f
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 506
    invoke-static {p0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/DisplayPrefs;->getCaptchaWiredDots(Landroid/content/Context;)I

    move-result v2

    .line 505
    invoke-static {v2}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternUtils;->genCaptchaPattern(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 502
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-object v0, v2

    .line 508
    :goto_9
    iget-object v1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    sget-object v2, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Animate:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2, v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->setPattern(Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    :cond_10
    :goto_a
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 347
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 349
    invoke-direct {p0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->initContentView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 315
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->EXTRA_THEME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget v2, Lgroup/pals/android/lib/ui/lockpattern/R$style;->Alp_Theme_Dark:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 319
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 321
    invoke-static {p0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/DisplayPrefs;->getMinWiredDots(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mMinWiredDots:I

    .line 322
    invoke-static {p0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/DisplayPrefs;->getMaxRetry(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mMaxRetry:I

    .line 323
    invoke-static {p0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/SecurityPrefs;->isAutoSavePattern(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mAutoSave:Z

    .line 328
    invoke-static {p0}, Lgroup/pals/android/lib/ui/lockpattern/prefs/SecurityPrefs;->getEncrypterClass(Landroid/content/Context;)[C

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 331
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 331
    invoke-static {v1, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 335
    :catchall_0
    new-instance p1, Lgroup/pals/android/lib/ui/lockpattern/util/InvalidEncrypterException;

    invoke-direct {p1}, Lgroup/pals/android/lib/ui/lockpattern/util/InvalidEncrypterException;-><init>()V

    throw p1

    .line 339
    :cond_1
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mIntentResult:Landroid/content/Intent;

    .line 340
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 342
    invoke-direct {p0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->initContentView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 369
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 354
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    .line 355
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 360
    invoke-direct {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->finishWithNegativeResult(I)V

    const/4 p1, 0x1

    return p1

    .line 364
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
