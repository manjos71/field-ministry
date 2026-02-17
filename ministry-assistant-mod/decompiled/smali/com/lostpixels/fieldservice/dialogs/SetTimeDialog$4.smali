.class Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$4;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$4;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->-$$Nest$fgetdate(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 110
    iget-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$4;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->-$$Nest$fgetmTimeSetListener(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$4;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->newInstance(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$4;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "timepicker"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
