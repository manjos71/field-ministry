.class Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;
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

    .line 65
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;II)V
    .locals 1

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xb

    .line 69
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 70
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 71
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->-$$Nest$fputscheduleDate(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;Ljava/util/Date;)V

    .line 72
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->-$$Nest$fgetbtnTime(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;)Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->-$$Nest$fgetscheduleDate(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    return-void
.end method
