.class Lnet/simonvt/widget/NumberPicker$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 657
    iput-object p1, p0, Lnet/simonvt/widget/NumberPicker$4;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 660
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker$4;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {p1}, Lnet/simonvt/widget/NumberPicker;->access$000(Lnet/simonvt/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    return-void

    .line 662
    :cond_0
    iget-object p2, p0, Lnet/simonvt/widget/NumberPicker$4;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {p2}, Lnet/simonvt/widget/NumberPicker;->access$000(Lnet/simonvt/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 663
    iget-object p2, p0, Lnet/simonvt/widget/NumberPicker$4;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {p2, p1}, Lnet/simonvt/widget/NumberPicker;->access$300(Lnet/simonvt/widget/NumberPicker;Landroid/view/View;)V

    return-void
.end method
