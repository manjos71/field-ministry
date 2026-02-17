.class Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 832
    iput-object p1, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$4;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 836
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$4;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    iget-object v0, v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->mLockPatternView:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;

    invoke-virtual {v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;->clearPattern()V

    .line 837
    iget-object v0, p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$4;->this$0:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;

    invoke-static {v0}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;->access$900(Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;)Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;

    move-result-object v0

    invoke-interface {v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    return-void
.end method
