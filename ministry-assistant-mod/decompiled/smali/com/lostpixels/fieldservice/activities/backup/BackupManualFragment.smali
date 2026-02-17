.class public Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field final mDateFormatDay:Ljava/text/SimpleDateFormat;

.field mchEmail:Landroid/widget/RadioButton;

.field mchGDrive:Landroid/widget/RadioButton;

.field mchSDCard:Landroid/widget/RadioButton;

.field mchText:Landroid/widget/RadioButton;

.field private txtManualLastTimeDrive:Landroid/widget/TextView;

.field private txtManualLastTimeEmail:Landroid/widget/TextView;

.field private txtManualLastTimeSD:Landroid/widget/TextView;

.field private txtManualLastTimeText:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgettxtManualLastTimeDrive(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->txtManualLastTimeDrive:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxtManualLastTimeEmail(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->txtManualLastTimeEmail:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxtManualLastTimeSD(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->txtManualLastTimeSD:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxtManualLastTimeText(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->txtManualLastTimeText:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mDateFormatDay:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method createBackup()V
    .locals 0

    .line 190
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->createBackupNoPermission()V

    return-void
.end method

.method createBackupNoPermission()V
    .locals 4

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203b7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchSDCard:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$6;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$6;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;->makeManualBackup(Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V

    const/4 v2, 0x1

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchEmail:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 v2, v2, 0x4

    .line 228
    new-instance v0, Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v3, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$7;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$7;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)V

    invoke-virtual {v0, v1, v3}, Lcom/lostpixels/fieldservice/backupsync/EMailBackupFactory;->makeManualBackup(Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchText:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    or-int/lit8 v2, v2, 0x8

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120376

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lde/keyboardsurfer/android/widget/crouton/Style;->INFO:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v1, v3}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 256
    :cond_2
    new-instance v0, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v3, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$8;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$8;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)V

    invoke-virtual {v0, v1, v3}, Lcom/lostpixels/fieldservice/backupsync/TextBackupFactory;->makeManualBackup(Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchGDrive:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    or-int/lit8 v2, v2, 0x2

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/NetworkUtils;->testInternetConnectionNoMessage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1200c1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v1, v3}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    goto :goto_0

    .line 286
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_5

    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivityPermissionsDispatcher;->initDriveProcessAccountWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;)V

    goto :goto_0

    .line 289
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivityPermissionsDispatcher;->initDriveProcessWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;)V

    .line 293
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 293
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ManualLocations"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public makeGDriveBackup()V
    .locals 3

    .line 334
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1203b6

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->INFO:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 336
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 337
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 339
    new-instance v1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-direct {v1, v2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;-><init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;)V

    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$11;

    invoke-direct {v2, p0, v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$11;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->makeManualBackup(Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 367
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 368
    instance-of v0, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    if-eqz v0, :cond_0

    return-void

    .line 369
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
    .locals 17

    move-object/from16 v1, p0

    const v0, 0x7f0c00a2

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 67
    invoke-virtual {v3, v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f090136

    .line 69
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchSDCard:Landroid/widget/RadioButton;

    const v0, 0x7f090127

    .line 70
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchEmail:Landroid/widget/RadioButton;

    const v0, 0x7f09012b

    .line 71
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchGDrive:Landroid/widget/RadioButton;

    const v0, 0x7f09013e

    .line 72
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchText:Landroid/widget/RadioButton;

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f1203e2

    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f120263

    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09060b

    .line 74
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->txtManualLastTimeSD:Landroid/widget/TextView;

    const v0, 0x7f09060a

    .line 75
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->txtManualLastTimeEmail:Landroid/widget/TextView;

    const v0, 0x7f09060c

    .line 76
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->txtManualLastTimeText:Landroid/widget/TextView;

    const v0, 0x7f090609

    .line 77
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->txtManualLastTimeDrive:Landroid/widget/TextView;

    const v0, 0x7f09062f

    .line 79
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f090612

    .line 80
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0905f9

    .line 81
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f09063c

    .line 82
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 84
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 85
    const-string v8, "ManualLocations"

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    and-int/lit8 v9, v8, 0x1

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    .line 88
    iget-object v8, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchSDCard:Landroid/widget/RadioButton;

    invoke-virtual {v8, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    and-int/lit8 v9, v8, 0x4

    if-eqz v9, :cond_1

    .line 90
    iget-object v8, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchEmail:Landroid/widget/RadioButton;

    invoke-virtual {v8, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    and-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_2

    .line 92
    iget-object v8, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchGDrive:Landroid/widget/RadioButton;

    invoke-virtual {v8, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    .line 94
    iget-object v8, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchText:Landroid/widget/RadioButton;

    invoke-virtual {v8, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 96
    :cond_3
    :goto_0
    iget-object v8, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchSDCard:Landroid/widget/RadioButton;

    new-instance v9, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$1;

    invoke-direct {v9, v1}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$1;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    iget-object v8, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchEmail:Landroid/widget/RadioButton;

    new-instance v9, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$2;

    invoke-direct {v9, v1}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$2;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    iget-object v8, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchGDrive:Landroid/widget/RadioButton;

    new-instance v9, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$3;

    invoke-direct {v9, v1}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$3;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    iget-object v8, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchText:Landroid/widget/RadioButton;

    new-instance v9, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$4;

    invoke-direct {v9, v1}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$4;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 140
    :try_start_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getBackupFileDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    :goto_1
    const-string v0, "backupAddr"

    const-string v8, ""

    invoke-interface {v7, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-interface {v7, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const-string v0, "accountName"

    const/4 v4, 0x0

    invoke-interface {v7, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    new-instance v0, Ljava/util/Date;

    const-string v4, "LastManualBackupSD"

    const-wide/16 v5, 0x0

    invoke-interface {v7, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 151
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const/4 v4, 0x2

    const v11, 0x7f120456

    const-string v12, "%s %s"

    const/4 v13, 0x3

    const-string v14, "%s %s - %s"

    const v15, 0x7f1205d9

    cmp-long v16, v8, v5

    if-eqz v16, :cond_4

    iget-object v8, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->txtManualLastTimeSD:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    .line 152
    invoke-virtual {v1, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 p3, 0x0

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mDateFormatDay:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/16 p1, 0x1

    invoke-static {v13}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v9, v5, p3

    aput-object v2, v5, p1

    aput-object v10, v5, v4

    invoke-static {v14, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const/16 p1, 0x1

    const/16 p3, 0x0

    .line 154
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->txtManualLastTimeSD:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v5, v8, p3

    aput-object v6, v8, p1

    invoke-static {v12, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :goto_2
    const-string v2, "LastManualBackupMail"

    const-wide/16 v5, 0x0

    invoke-interface {v7, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 157
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v2, v8, v5

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->txtManualLastTimeEmail:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 158
    invoke-virtual {v1, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mDateFormatDay:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v13}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v5, v9, p3

    aput-object v6, v9, p1

    aput-object v8, v9, v4

    invoke-static {v14, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 160
    :cond_5
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->txtManualLastTimeEmail:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v5, v8, p3

    aput-object v6, v8, p1

    invoke-static {v12, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_3
    const-string v2, "LastManualBackupText"

    const-wide/16 v5, 0x0

    invoke-interface {v7, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 163
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v2, v8, v5

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->txtManualLastTimeText:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 164
    invoke-virtual {v1, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mDateFormatDay:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v13}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v5, v9, p3

    aput-object v6, v9, p1

    aput-object v8, v9, v4

    invoke-static {v14, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 166
    :cond_6
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->txtManualLastTimeText:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v5, v8, p3

    aput-object v6, v8, p1

    invoke-static {v12, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_4
    const-string v2, "LastManualBackupDrive"

    const-wide/16 v5, 0x0

    invoke-interface {v7, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 169
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->txtManualLastTimeDrive:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    .line 170
    invoke-virtual {v1, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mDateFormatDay:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v13}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v5, v7, p3

    aput-object v6, v7, p1

    aput-object v0, v7, v4

    invoke-static {v14, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 172
    :cond_7
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->txtManualLastTimeDrive:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, p3

    aput-object v5, v4, p1

    invoke-static {v12, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    const v0, 0x7f0900eb

    .line 174
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 175
    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$5;

    invoke-direct {v2, v1}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$5;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 328
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 330
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragmentPermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;I[I)V

    return-void
.end method

.method showDeniedForPosition()V
    .locals 3

    .line 321
    const-string v0, "Permission denied"

    const-string v1, "WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
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

    .line 300
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12024d

    .line 302
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 303
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$10;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$10;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;Lpermissions/dispatcher/PermissionRequest;)V

    .line 304
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$9;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$9;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;Lpermissions/dispatcher/PermissionRequest;)V

    const p1, 0x7f12004b

    .line 309
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 314
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
