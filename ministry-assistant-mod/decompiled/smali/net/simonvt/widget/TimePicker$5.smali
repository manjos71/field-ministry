.class Lnet/simonvt/widget/TimePicker$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/simonvt/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/simonvt/widget/TimePicker;


# direct methods
.method constructor <init>(Lnet/simonvt/widget/TimePicker;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lnet/simonvt/widget/TimePicker$5;->this$0:Lnet/simonvt/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lnet/simonvt/widget/NumberPicker;II)V
    .locals 0

    .line 232
    iget-object p2, p0, Lnet/simonvt/widget/TimePicker$5;->this$0:Lnet/simonvt/widget/TimePicker;

    invoke-static {p2}, Lnet/simonvt/widget/TimePicker;->access$000(Lnet/simonvt/widget/TimePicker;)V

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 234
    iget-object p1, p0, Lnet/simonvt/widget/TimePicker$5;->this$0:Lnet/simonvt/widget/TimePicker;

    invoke-static {p1}, Lnet/simonvt/widget/TimePicker;->access$100(Lnet/simonvt/widget/TimePicker;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lnet/simonvt/widget/TimePicker;->access$102(Lnet/simonvt/widget/TimePicker;Z)Z

    .line 235
    iget-object p1, p0, Lnet/simonvt/widget/TimePicker$5;->this$0:Lnet/simonvt/widget/TimePicker;

    invoke-static {p1}, Lnet/simonvt/widget/TimePicker;->access$200(Lnet/simonvt/widget/TimePicker;)V

    .line 236
    iget-object p1, p0, Lnet/simonvt/widget/TimePicker$5;->this$0:Lnet/simonvt/widget/TimePicker;

    invoke-static {p1}, Lnet/simonvt/widget/TimePicker;->access$300(Lnet/simonvt/widget/TimePicker;)V

    return-void
.end method
