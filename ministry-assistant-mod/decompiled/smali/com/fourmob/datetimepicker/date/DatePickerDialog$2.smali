.class Lcom/fourmob/datetimepicker/date/DatePickerDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fourmob/datetimepicker/date/DatePickerDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fourmob/datetimepicker/date/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/fourmob/datetimepicker/date/DatePickerDialog;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog$2;->this$0:Lcom/fourmob/datetimepicker/date/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 335
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog$2;->this$0:Lcom/fourmob/datetimepicker/date/DatePickerDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
