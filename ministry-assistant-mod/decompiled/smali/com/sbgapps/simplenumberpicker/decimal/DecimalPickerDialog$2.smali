.class Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 141
    iput-object p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$2;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 144
    iget-object p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$2;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-static {p1}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->access$000(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$2;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-static {p1}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->access$100(Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;)V

    const/4 p1, 0x1

    return p1
.end method
