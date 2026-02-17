.class Lnet/simonvt/widget/NumberPicker$6;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lnet/simonvt/widget/NumberPicker;


# direct methods
.method constructor <init>(Lnet/simonvt/widget/NumberPicker;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lnet/simonvt/widget/NumberPicker$6;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 718
    iput-boolean p1, p0, Lnet/simonvt/widget/NumberPicker$6;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0

    .line 731
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker$6;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {p1}, Lnet/simonvt/widget/NumberPicker;->access$800(Lnet/simonvt/widget/NumberPicker;)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 732
    iput-boolean p1, p0, Lnet/simonvt/widget/NumberPicker$6;->mCanceled:Z

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1

    .line 722
    iget-boolean p1, p0, Lnet/simonvt/widget/NumberPicker$6;->mCanceled:Z

    if-nez p1, :cond_0

    .line 724
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker$6;->this$0:Lnet/simonvt/widget/NumberPicker;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lnet/simonvt/widget/NumberPicker;->access$700(Lnet/simonvt/widget/NumberPicker;I)V

    :cond_0
    const/4 p1, 0x0

    .line 726
    iput-boolean p1, p0, Lnet/simonvt/widget/NumberPicker$6;->mCanceled:Z

    return-void
.end method
