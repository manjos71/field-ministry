.class public Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;
.super Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$OnAddMagazineListener;
    }
.end annotation


# instance fields
.field private btnMonth:Landroid/widget/Button;

.field private mDate:Ljava/util/Date;

.field private final mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

.field private final mMagListner:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$OnAddMagazineListener;

.field private final mMonthFormat:Ljava/text/SimpleDateFormat;

.field private mckAwake:Landroid/widget/CheckBox;

.field private mckWatchTower:Landroid/widget/CheckBox;

.field private medtAlias:Landroid/widget/EditText;

.field private mrdPublicEdition:Landroid/widget/RadioButton;

.field private mrdStudyEdition:Landroid/widget/RadioButton;


# direct methods
.method static bridge synthetic -$$Nest$fgetbtnMonth(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/Button;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->btnMonth:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDate(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Ljava/util/Date;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mDate:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDateSetListener(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMagListner(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$OnAddMagazineListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mMagListner:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$OnAddMagazineListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMonthFormat(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mMonthFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmckAwake(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mckAwake:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmckWatchTower(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mckWatchTower:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtAlias(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->medtAlias:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmrdPublicEdition(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/RadioButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mrdPublicEdition:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmrdStudyEdition(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/RadioButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mrdStudyEdition:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDate(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;Ljava/util/Date;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mDate:Ljava/util/Date;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMagazineTitle(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->getMagazineTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;ILcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$OnAddMagazineListener;I)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;-><init>(Landroidx/fragment/app/FragmentActivity;ILcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;I)V

    .line 41
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p4, "MMMM yyyy"

    invoke-direct {p2, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mMonthFormat:Ljava/text/SimpleDateFormat;

    .line 50
    new-instance p2, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;

    invoke-direct {p2, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    const p2, 0x7f0c002d

    .line 101
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 102
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mMagListner:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$OnAddMagazineListener;

    .line 103
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mDate:Ljava/util/Date;

    .line 104
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method private getMagazineTitle()Ljava/lang/String;
    .locals 10

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x7df

    if-gt v2, v3, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mMonthFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x7e1

    const/4 v4, 0x0

    const-string v5, " "

    const v6, 0x7f120504

    const v7, 0x7f120041

    const v8, 0x7f1205fa

    const/4 v9, 0x2

    if-gt v2, v3, :cond_3

    .line 114
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mrdPublicEdition:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    rem-int/2addr v2, v9

    if-nez v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    div-int/2addr v0, v9

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    div-int/2addr v0, v9

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mMonthFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :cond_3
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mrdPublicEdition:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 123
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    if-ne v2, v1, :cond_4

    goto :goto_0

    .line 126
    :cond_4
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 124
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mMonthFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 135
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->installExceptionHandler()V

    .line 136
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->setLanguage(Landroid/app/Activity;)V

    .line 137
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mDate:Ljava/util/Date;

    const-string v1, "Date"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 143
    :cond_0
    iget p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v0, 0x7f12043b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const p1, 0x7f09048e

    .line 149
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mrdStudyEdition:Landroid/widget/RadioButton;

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const p1, 0x7f090488

    .line 151
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mrdPublicEdition:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    .line 152
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const p1, 0x7f0900a4

    .line 154
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->medtAlias:Landroid/widget/EditText;

    const p1, 0x7f0900ec

    .line 155
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->btnMonth:Landroid/widget/Button;

    .line 156
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->getMagazineTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0900e1

    .line 157
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v2, 0x7f0900e6

    .line 158
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f09015b

    .line 159
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mckAddToReport:Landroid/widget/CheckBox;

    .line 160
    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const v3, 0x7f090170

    .line 161
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mckWatchTower:Landroid/widget/CheckBox;

    .line 162
    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const v3, 0x7f09015c

    .line 163
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mckAwake:Landroid/widget/CheckBox;

    .line 164
    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 166
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 167
    const-string v4, "ReportDensity"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 168
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mckAddToReport:Landroid/widget/CheckBox;

    if-nez v4, :cond_2

    const/16 v0, 0x8

    :cond_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mckAwake:Landroid/widget/CheckBox;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mckWatchTower:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 174
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v5

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mDate:Ljava/util/Date;

    invoke-virtual {v5, v1, v1, v6}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getMagazineAlias(ZZLjava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 176
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->medtAlias:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mckWatchTower:Landroid/widget/CheckBox;

    new-instance v6, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$2;

    invoke-direct {v6, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)V

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mckAwake:Landroid/widget/CheckBox;

    new-instance v6, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$3;

    invoke-direct {v6, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)V

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 198
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mrdPublicEdition:Landroid/widget/RadioButton;

    new-instance v6, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$4;

    invoke-direct {v6, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$4;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)V

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 212
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mrdStudyEdition:Landroid/widget/RadioButton;

    new-instance v6, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$5;

    invoke-direct {v6, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$5;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)V

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 226
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->btnMonth:Landroid/widget/Button;

    new-instance v6, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$6;

    invoke-direct {v6, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$6;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    new-instance v5, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;

    invoke-direct {v5, p0, v4}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;I)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$8;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$8;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const-string p1, "checkAddReport"

    invoke-interface {v3, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 319
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mckAddToReport:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 320
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mDate:Ljava/util/Date;

    const-string v1, "Date"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 326
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    .line 332
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "Date"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method
