.class Lcom/sleepbot/datetimepicker/time/TimePickerDialog$3;
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

    .line 254
    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$3;->this$0:Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 257
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$3;->this$0:Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v0, v1, v0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->access$100(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;IZZZ)V

    .line 258
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$3;->this$0:Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    invoke-static {p1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->access$200(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;)Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->tryVibrate()V

    return-void
.end method
