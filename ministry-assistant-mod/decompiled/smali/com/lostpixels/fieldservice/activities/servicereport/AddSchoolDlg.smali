.class public Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$OnSchoolAddedListener;
    }
.end annotation


# instance fields
.field mArrSchools:[Ljava/lang/String;

.field private final mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

.field private mListener:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$OnSchoolAddedListener;

.field private final mMonthFormat:Ljava/text/SimpleDateFormat;

.field mbtnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

.field private mdate:Ljava/util/Date;

.field medtHours:Landroid/widget/EditText;

.field mspinnerSchools:Lcom/lostpixels/fieldservice/ui/SpinnerButton;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$OnSchoolAddedListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mListener:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$OnSchoolAddedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMonthFormat(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mMonthFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmdate(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)Ljava/util/Date;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mdate:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmdate(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;Ljava/util/Date;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mdate:Ljava/util/Date;

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSchoolsList(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->showSchoolsList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLLL yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mMonthFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mdate:Ljava/util/Date;

    .line 49
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$1;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method private showSchoolsList()V
    .locals 3

    .line 135
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 137
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mArrSchools:[Ljava/lang/String;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$6;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c002c

    .line 69
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0904f8

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mspinnerSchools:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    const p2, 0x7f0904f1

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mbtnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    const p2, 0x7f0901e0

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->medtHours:Landroid/widget/EditText;

    .line 74
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mbtnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    new-instance p3, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$2;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$2;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)V

    invoke-virtual {p2, p3}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mspinnerSchools:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    const p3, 0x7f12048e

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mspinnerSchools:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$3;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$3;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)V

    invoke-virtual {p2, v0}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x5

    .line 89
    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mArrSchools:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    .line 91
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mArrSchools:[Ljava/lang/String;

    const p3, 0x7f120427

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p2, v0

    .line 92
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mArrSchools:[Ljava/lang/String;

    const p3, 0x7f1204c1

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    aput-object p3, p2, v0

    .line 93
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mArrSchools:[Ljava/lang/String;

    const p3, 0x7f120545

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x3

    aput-object p3, p2, v0

    .line 94
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mArrSchools:[Ljava/lang/String;

    const p3, 0x7f1203be

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x4

    aput-object p3, p2, v0

    const p2, 0x7f0900e6

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 97
    new-instance p3, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$4;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$4;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900e1

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 104
    new-instance p3, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$5;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$5;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const p3, 0x7f1203c3

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mdate:Ljava/util/Date;

    .line 117
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mbtnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mMonthFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    .line 118
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->medtHours:Landroid/widget/EditText;

    const-string p3, "30"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public setListener(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$OnSchoolAddedListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mListener:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$OnSchoolAddedListener;

    return-void
.end method

.method protected showDateDialog()V
    .locals 9

    .line 123
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;IIIZZ)Lcom/fourmob/datetimepicker/date/DatePickerDialog;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 127
    const-string v2, "checkFirstDayOfWeek"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    .line 128
    :goto_0
    invoke-virtual {v0, v7}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setFirstDayOfWeek(I)V

    const/16 v1, 0x7c1

    const/16 v2, 0x7ec

    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setYearRange(II)V

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "datepicker"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
