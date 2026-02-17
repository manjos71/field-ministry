.class Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->-$$Nest$fgetscheduleDate(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 143
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->-$$Nest$fgetmTimeSetListener(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;)Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->newInstance(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    move-result-object p1

    .line 145
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "timepicker"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
