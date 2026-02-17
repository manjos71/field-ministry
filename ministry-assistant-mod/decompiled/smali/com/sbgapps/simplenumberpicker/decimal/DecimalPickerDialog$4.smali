.class Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 153
    iput-object p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$4;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 156
    iget-object p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$4;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-static {p1}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->access$000(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3a

    const/16 v0, 0x2e

    .line 157
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "0"

    .line 161
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 165
    :goto_0
    iget-object p2, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$4;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 166
    iget-object v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$4;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 167
    instance-of v1, p2, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerHandler;

    if-eqz v1, :cond_1

    .line 168
    check-cast p2, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerHandler;

    .line 169
    iget-object v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$4;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-static {v0}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->access$200(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)I

    move-result v0

    invoke-interface {p2, v0, p1}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerHandler;->onDecimalNumberPicked(IF)V

    goto :goto_1

    .line 170
    :cond_1
    instance-of p2, v0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerHandler;

    if-eqz p2, :cond_2

    .line 171
    check-cast v0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerHandler;

    .line 172
    iget-object p2, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$4;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-static {p2}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->access$200(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)I

    move-result p2

    invoke-interface {v0, p2, p1}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerHandler;->onDecimalNumberPicked(IF)V

    .line 174
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$4;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
