.class Lnet/simonvt/widget/NumberPicker$3;
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

    .line 630
    iput-object p1, p0, Lnet/simonvt/widget/NumberPicker$3;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 632
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker$3;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/widget/NumberPicker;->access$000(Lnet/simonvt/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 633
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lnet/simonvt/widget/R$id;->np_increment:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 634
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker$3;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {p1, v1}, Lnet/simonvt/widget/NumberPicker;->access$200(Lnet/simonvt/widget/NumberPicker;Z)V

    goto :goto_0

    .line 636
    :cond_0
    iget-object p1, p0, Lnet/simonvt/widget/NumberPicker$3;->this$0:Lnet/simonvt/widget/NumberPicker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnet/simonvt/widget/NumberPicker;->access$200(Lnet/simonvt/widget/NumberPicker;Z)V

    :goto_0
    return v1
.end method
