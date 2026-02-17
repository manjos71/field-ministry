.class Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$3;
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

    .line 177
    iput-object p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$3;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$3;->this$0:Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
