.class Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;


# direct methods
.method constructor <init>(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$1;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 134
    iget-object p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$1;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-static {p1}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->access$000(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$1;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    .line 135
    invoke-static {v0}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->access$000(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 136
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v1, v0, :cond_0

    const/16 v0, 0x2d

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_0

    const-string p1, ""

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$1;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-static {v0}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->access$000(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$1;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-static {p1}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->access$100(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)V

    return-void
.end method
