.class public Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private btnTime:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

.field chDrive:Landroid/widget/CheckBox;

.field chSDCard:Landroid/widget/CheckBox;

.field chScheduleBackup:Landroid/widget/CompoundButton;

.field final mDateFormatDay:Ljava/text/SimpleDateFormat;

.field private final mTimeSetListener:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

.field private scheduleDate:Ljava/util/Date;

.field spinnerDays:Landroid/widget/Spinner;

.field spinnerFiles:Landroid/widget/Spinner;


# direct methods
.method static bridge synthetic -$$Nest$fgetbtnTime(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;)Lcom/lostpixels/fieldservice/ui/SpinnerButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->btnTime:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeSetListener(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;)Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->mTimeSetListener:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscheduleDate(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;)Ljava/util/Date;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->scheduleDate:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputscheduleDate(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;Ljava/util/Date;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->scheduleDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->mDateFormatDay:Ljava/text/SimpleDateFormat;

    .line 63
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->scheduleDate:Ljava/util/Date;

    .line 65
    new-instance v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$1;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->mTimeSetListener:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 266
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 267
    instance-of v0, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    if-eqz v0, :cond_0

    return-void

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implemenet IRequestAuthorization"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    const v1, 0x7f0c0118

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 78
    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 80
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 81
    const-string v4, "ScheduleFreq"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 82
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-string v8, "ScheduleTime"

    invoke-interface {v3, v8, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 83
    const-string v8, "ScheduleFiles"

    const/16 v9, 0x1e

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 84
    const-string v10, "BackupLocations"

    const/4 v11, 0x2

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 85
    iget-object v12, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->scheduleDate:Ljava/util/Date;

    invoke-virtual {v12, v6, v7}, Ljava/util/Date;->setTime(J)V

    const v12, 0x7f0904f2

    .line 90
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->spinnerDays:Landroid/widget/Spinner;

    const v12, 0x7f090105

    .line 91
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    iput-object v12, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->btnTime:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    const v12, 0x7f0904ef

    .line 92
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->spinnerFiles:Landroid/widget/Spinner;

    const v12, 0x7f090136

    .line 93
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    iput-object v12, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->chSDCard:Landroid/widget/CheckBox;

    const v12, 0x7f09012c

    .line 94
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    iput-object v12, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->chDrive:Landroid/widget/CheckBox;

    .line 95
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f1205d6

    invoke-virtual {v0, v14}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v15, 0x7f120321

    invoke-virtual {v0, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f0900f5

    .line 96
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    const v13, 0x7f090608

    .line 97
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v15, 0x7f090138

    .line 98
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/CompoundButton;

    iput-object v15, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->chScheduleBackup:Landroid/widget/CompoundButton;

    .line 99
    const-string v11, "ScheduleBackup"

    invoke-interface {v3, v11, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v15, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 100
    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->chScheduleBackup:Landroid/widget/CompoundButton;

    new-instance v15, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$2;

    invoke-direct {v15, v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$2;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;)V

    invoke-virtual {v11, v15}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    new-instance v11, Ljava/util/Date;

    const-string v15, "LastSchedBackup"

    move-wide/from16 v16, v6

    const/16 p2, 0x1

    const-wide/16 v5, 0x0

    invoke-interface {v3, v15, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v11, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 112
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const/4 v7, 0x3

    const v15, 0x7f1205d9

    cmp-long v18, v2, v5

    if-eqz v18, :cond_0

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->mDateFormatDay:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {v7}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f120456

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    :goto_1
    if-ge v3, v9, :cond_1

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 124
    :cond_1
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const v6, 0x1090008

    invoke-direct {v3, v5, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    .line 125
    invoke-virtual {v3, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 126
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->spinnerDays:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 127
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->spinnerDays:Landroid/widget/Spinner;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    move-wide/from16 v13, v16

    .line 132
    invoke-virtual {v3, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v5, 0x1

    .line 133
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v3, v5, v11}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x2

    .line 134
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v3, v5, v11}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x5

    .line 135
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 136
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 137
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->btnTime:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    invoke-static {v7}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    .line 138
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->btnTime:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    new-instance v4, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$3;

    invoke-direct {v4, v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$3;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;)V

    invoke-virtual {v3, v4}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    :goto_2
    if-gt v5, v9, :cond_2

    .line 152
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 154
    :cond_2
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 155
    invoke-virtual {v4, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 156
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->spinnerFiles:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 157
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->spinnerFiles:Landroid/widget/Spinner;

    const/4 v5, 0x1

    sub-int/2addr v8, v5

    invoke-virtual {v2, v8}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 159
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->chSDCard:Landroid/widget/CheckBox;

    and-int/lit8 v3, v10, 0x1

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 160
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->chDrive:Landroid/widget/CheckBox;

    const/4 v3, 0x2

    and-int/2addr v3, v10

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 162
    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$4;

    invoke-direct {v2, v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$4;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;)V

    invoke-virtual {v12, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 251
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 253
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragmentPermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;I[I)V

    return-void
.end method

.method scheduleBackup()V
    .locals 0

    .line 178
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->scheduleBackupNoPermission()V

    return-void
.end method

.method scheduleBackupNoPermission()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->chScheduleBackup:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->chSDCard:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->chDrive:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1200b7

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->spinnerDays:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "ScheduleFreq"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 193
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->spinnerFiles:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "ScheduleFiles"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 195
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->chSDCard:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 197
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->chDrive:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 199
    :cond_1
    const-string v2, "BackupLocations"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 200
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->chScheduleBackup:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const-string v2, "ScheduleBackup"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 202
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->scheduleDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "ScheduleTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1204c0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->CONFIRM:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->chScheduleBackup:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->setupBackupSchedule(Landroid/content/Context;)V

    .line 211
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->chDrive:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_3

    .line 213
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivityPermissionsDispatcher;->initDriveProcessAccountWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;)V

    return-void

    .line 215
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivityPermissionsDispatcher;->initDriveProcessWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;)V

    :cond_4
    return-void

    .line 218
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->cancelBackupSchedule(Landroid/content/Context;)V

    return-void
.end method

.method public scheduleDriveBackup()V
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$7;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$7;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 261
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method showDeniedForPosition()V
    .locals 3

    .line 244
    const-string v0, "Permission denied"

    const-string v1, "WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120279

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method showRationaleForPosition(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 4

    .line 223
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12024d

    .line 225
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 226
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$6;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;Lpermissions/dispatcher/PermissionRequest;)V

    .line 227
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$5;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;Lpermissions/dispatcher/PermissionRequest;)V

    const p1, 0x7f12004b

    .line 232
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
