.class public Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$SetTimeDialogListener;
    }
.end annotation


# instance fields
.field private btnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

.field private btnTime:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

.field private date:Ljava/util/Date;

.field private listener:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$SetTimeDialogListener;

.field private final mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

.field private final mTimeSetListener:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetbtnDate(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Lcom/lostpixels/fieldservice/ui/SpinnerButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->btnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbtnTime(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Lcom/lostpixels/fieldservice/ui/SpinnerButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->btnTime:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdate(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Ljava/util/Date;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->date:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$SetTimeDialogListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->listener:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$SetTimeDialogListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDateSetListener(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeSetListener(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->mTimeSetListener:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdate(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;Ljava/util/Date;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->date:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 33
    new-instance v0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$1;-><init>(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->mTimeSetListener:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    .line 45
    new-instance v0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$2;-><init>(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0c0134

    .line 76
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 78
    const-string p2, "Date"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->date:Ljava/util/Date;

    .line 81
    :cond_0
    iget-object p2, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->date:Ljava/util/Date;

    if-nez p2, :cond_1

    .line 82
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->date:Ljava/util/Date;

    :cond_1
    const p2, 0x7f0900ec

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->btnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    .line 85
    new-instance p3, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$3;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$3;-><init>(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)V

    invoke-virtual {p2, p3}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090105

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->btnTime:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    .line 104
    new-instance p3, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$4;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$4;-><init>(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)V

    invoke-virtual {p2, p3}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p2, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->btnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p3

    iget-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->date:Ljava/util/Date;

    invoke-virtual {p3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->btnTime:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    const/4 p3, 0x3

    invoke-static {p3}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object p3

    iget-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->date:Ljava/util/Date;

    invoke-virtual {p3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const p3, 0x7f1201b8

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900e6

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 121
    new-instance p3, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$5;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$5;-><init>(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900fe

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 128
    new-instance p3, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$6;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$6;-><init>(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->date:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 142
    const-string v1, "Date"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 143
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->date:Ljava/util/Date;

    return-void
.end method

.method public setTimeChangedListener(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$SetTimeDialogListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->listener:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$SetTimeDialogListener;

    return-void
.end method
