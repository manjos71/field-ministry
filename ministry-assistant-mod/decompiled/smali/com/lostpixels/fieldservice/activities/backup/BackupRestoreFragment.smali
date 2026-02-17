.class public Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;,
        Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListViewHolder;
    }
.end annotation


# instance fields
.field private mchGDrive:Landroid/widget/CheckBox;

.field private mchSDCard:Landroid/widget/CheckBox;

.field private mlstBackups:Landroid/widget/ListView;

.field private mprogress:Landroid/widget/ProgressBar;


# direct methods
.method static bridge synthetic -$$Nest$fgetmchGDrive(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mchGDrive:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmchSDCard(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mchSDCard:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmlstBackups(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)Landroid/widget/ListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mlstBackups:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmprogress(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mprogress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public fillRestoreList()V
    .locals 2

    .line 260
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->fillRestoreListInternalNoPermission()V

    return-void

    .line 263
    :cond_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher;->fillRestoreListInternalWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)V

    return-void
.end method

.method fillRestoreListInternal()V
    .locals 0

    .line 268
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->fillRestoreListInternalNoPermission()V

    return-void
.end method

.method fillRestoreListInternalNoPermission()V
    .locals 4

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mprogress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mchGDrive:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mprogress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mlstBackups:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 347
    :cond_0
    new-instance v1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;

    invoke-direct {v1, p0, v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 387
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 388
    instance-of v0, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;

    if-eqz v0, :cond_0

    return-void

    .line 389
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
    .locals 4

    const p3, 0x7f0c0105

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090136

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mchSDCard:Landroid/widget/CheckBox;

    const p2, 0x7f09012c

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mchGDrive:Landroid/widget/CheckBox;

    const p2, 0x7f090398

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mlstBackups:Landroid/widget/ListView;

    const p2, 0x7f090455

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mprogress:Landroid/widget/ProgressBar;

    const p2, 0x7f0905fa

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/16 p3, 0x8

    .line 81
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mlstBackups:Landroid/widget/ListView;

    invoke-virtual {v1, p2}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 84
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mprogress:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 88
    const-string p3, "RestoreLocations"

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    .line 90
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mchSDCard:Landroid/widget/CheckBox;

    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 91
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mchGDrive:Landroid/widget/CheckBox;

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_2

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lcom/lostpixels/fieldservice/utils/NetworkUtils;->testInternetConnectionNoMessage(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    .line 91
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 94
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mchSDCard:Landroid/widget/CheckBox;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1;

    invoke-direct {v0, p0, p2}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mchGDrive:Landroid/widget/CheckBox;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$2;

    invoke-direct {v0, p0, p2}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$2;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 130
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->fillRestoreList()V

    .line 132
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mlstBackups:Landroid/widget/ListView;

    new-instance p3, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 215
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->mlstBackups:Landroid/widget/ListView;

    new-instance p3, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-object p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 380
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 382
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;I[I)V

    return-void
.end method

.method showDeniedForPosition()V
    .locals 3

    .line 373
    const-string v0, "Permission denied"

    const-string v1, "WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
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

    .line 352
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12024d

    .line 354
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 355
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$6;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;Lpermissions/dispatcher/PermissionRequest;)V

    .line 356
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$5;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;Lpermissions/dispatcher/PermissionRequest;)V

    const p1, 0x7f12004b

    .line 361
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 366
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 367
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
