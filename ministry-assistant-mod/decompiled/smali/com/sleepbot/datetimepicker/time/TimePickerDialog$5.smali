.class Lcom/sleepbot/datetimepicker/time/TimePickerDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepbot/datetimepicker/time/TimePickerDialog;


# direct methods
.method constructor <init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$5;->this$0:Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 274
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$5;->this$0:Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
