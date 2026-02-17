.class Lnet/simonvt/widget/TimePicker$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 216
    iput-object p1, p0, Lnet/simonvt/widget/TimePicker$4;->this$0:Lnet/simonvt/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 219
    iget-object p1, p0, Lnet/simonvt/widget/TimePicker$4;->this$0:Lnet/simonvt/widget/TimePicker;

    invoke-static {p1}, Lnet/simonvt/widget/TimePicker;->access$100(Lnet/simonvt/widget/TimePicker;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lnet/simonvt/widget/TimePicker;->access$102(Lnet/simonvt/widget/TimePicker;Z)Z

    .line 220
    iget-object p1, p0, Lnet/simonvt/widget/TimePicker$4;->this$0:Lnet/simonvt/widget/TimePicker;

    invoke-static {p1}, Lnet/simonvt/widget/TimePicker;->access$200(Lnet/simonvt/widget/TimePicker;)V

    .line 221
    iget-object p1, p0, Lnet/simonvt/widget/TimePicker$4;->this$0:Lnet/simonvt/widget/TimePicker;

    invoke-static {p1}, Lnet/simonvt/widget/TimePicker;->access$300(Lnet/simonvt/widget/TimePicker;)V

    return-void
.end method
