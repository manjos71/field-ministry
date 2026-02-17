.class Lcom/sleepbot/datetimepicker/time/TimePickerDialog$6;
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

    .line 291
    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$6;->this$0:Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 294
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$6;->this$0:Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    invoke-static {p1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->access$200(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;)Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->tryVibrate()V

    .line 295
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$6;->this$0:Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    invoke-static {p1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->access$200(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;)Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 301
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$6;->this$0:Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    invoke-static {v0, p1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->access$400(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;I)V

    .line 302
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$6;->this$0:Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    invoke-static {v0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->access$200(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;)Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    return-void
.end method
