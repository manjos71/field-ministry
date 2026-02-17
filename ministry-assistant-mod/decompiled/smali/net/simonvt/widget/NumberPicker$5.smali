.class Lnet/simonvt/widget/NumberPicker$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/simonvt/widget/NumberPicker;


# direct methods
.method constructor <init>(Lnet/simonvt/widget/NumberPicker;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lnet/simonvt/widget/NumberPicker$5;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 679
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker$5;->this$0:Lnet/simonvt/widget/NumberPicker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnet/simonvt/widget/NumberPicker;->access$402(Lnet/simonvt/widget/NumberPicker;Z)Z

    .line 680
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker$5;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {p1}, Lnet/simonvt/widget/NumberPicker;->access$500(Lnet/simonvt/widget/NumberPicker;)V

    .line 681
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker$5;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {p1}, Lnet/simonvt/widget/NumberPicker;->access$600(Lnet/simonvt/widget/NumberPicker;)Lnet/simonvt/widget/NumberPicker$IOnLongpress;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 682
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker$5;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {p1}, Lnet/simonvt/widget/NumberPicker;->access$600(Lnet/simonvt/widget/NumberPicker;)Lnet/simonvt/widget/NumberPicker$IOnLongpress;

    move-result-object p1

    invoke-interface {p1}, Lnet/simonvt/widget/NumberPicker$IOnLongpress;->onLongPress()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
