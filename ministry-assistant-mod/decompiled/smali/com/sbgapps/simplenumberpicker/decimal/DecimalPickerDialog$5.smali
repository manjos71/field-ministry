.class Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$5;
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

    .line 199
    iput-object p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$5;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 203
    iget-object v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$5;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-static {v0}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->access$000(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$5;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-static {v1}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->access$000(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    .line 208
    iget-object v1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$5;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-static {v1}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->access$000(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x6

    if-lt p1, v0, :cond_1

    :goto_0
    return-void

    .line 211
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$5;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-static {v1}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->access$000(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 212
    iget-object v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$5;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-static {v0}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->access$000(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$5;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-static {p1}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->access$100(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)V

    return-void
.end method
