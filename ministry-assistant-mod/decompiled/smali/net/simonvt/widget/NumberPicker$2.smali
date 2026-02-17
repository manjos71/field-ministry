.class Lnet/simonvt/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 614
    iput-object p1, p0, Lnet/simonvt/widget/NumberPicker$2;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 616
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker$2;->this$0:Lnet/simonvt/widget/NumberPicker;

    .line 617
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 618
    iget-object v2, p0, Lnet/simonvt/widget/NumberPicker$2;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {v2}, Lnet/simonvt/widget/NumberPicker;->access$000(Lnet/simonvt/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 619
    iget-object v2, p0, Lnet/simonvt/widget/NumberPicker$2;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 621
    :cond_0
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker$2;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/widget/NumberPicker;->access$000(Lnet/simonvt/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 622
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lnet/simonvt/widget/R$id;->np_increment:I

    if-ne p1, v0, :cond_1

    .line 623
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker$2;->this$0:Lnet/simonvt/widget/NumberPicker;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lnet/simonvt/widget/NumberPicker;->access$100(Lnet/simonvt/widget/NumberPicker;Z)V

    return-void

    .line 625
    :cond_1
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker$2;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {p1, v1}, Lnet/simonvt/widget/NumberPicker;->access$100(Lnet/simonvt/widget/NumberPicker;Z)V

    return-void
.end method
