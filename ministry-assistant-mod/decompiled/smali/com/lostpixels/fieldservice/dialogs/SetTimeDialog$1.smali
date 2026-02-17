.class Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;
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

    .line 33
    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;II)V
    .locals 1

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->-$$Nest$fgetdate(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xb

    .line 38
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 39
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 40
    iget-object p2, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->-$$Nest$fputdate(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;Ljava/util/Date;)V

    .line 41
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->-$$Nest$fgetbtnDate(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->-$$Nest$fgetdate(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->-$$Nest$fgetbtnTime(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->-$$Nest$fgetdate(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    return-void
.end method
