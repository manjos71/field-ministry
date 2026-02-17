.class public Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$ViewPagerAdapter;
    }
.end annotation


# instance fields
.field private credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

.field private mBackupFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

.field private mPager:Landroidx/viewpager/widget/ViewPager;

.field private mRestoreFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

.field private mScheduleFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

.field private mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBackupFragment(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;)Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mBackupFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRestoreFragment(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;)Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mRestoreFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScheduleFragment(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;)Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mScheduleFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0c0038

    .line 77
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;-><init>(I)V

    return-void
.end method


# virtual methods
.method public findFragmentByPosition(I)Landroidx/fragment/app/Fragment;
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentPagerAdapter;

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android:switcher:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 142
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 209
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 212
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 220
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 221
    throw v0

    .line 220
    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public initDriveProcess()V
    .locals 0

    .line 148
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->initDriveProcessNoPermission()V

    return-void
.end method

.method public initDriveProcessAccount()V
    .locals 0

    .line 153
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->initDriveProcessNoPermission()V

    return-void
.end method

.method public initDriveProcessNoPermission()V
    .locals 3

    .line 158
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 159
    const-string v1, "accountName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 161
    const-string v0, "https://www.googleapis.com/auth/drive.file"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 162
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->newChooseAccountIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mBackupFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->makeGDriveBackup()V

    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 167
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mScheduleFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->scheduleDriveBackup()V

    return-void

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 169
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mRestoreFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->fillRestoreList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    .line 172
    :catch_0
    const-string v0, "Error: Do you have Google Play Services installed?"

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p0, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-ne p2, v1, :cond_8

    .line 231
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 233
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".maexport"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 237
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v2, "application/maexport"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-class v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 242
    :cond_1
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1205e0

    .line 243
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1203a8

    .line 244
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;

    invoke-direct {v5, p0, v1, v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12004b

    .line 299
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$2;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$2;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;)V

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_2
    if-ne p2, v1, :cond_8

    .line 333
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_3

    .line 334
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mBackupFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->makeGDriveBackup()V

    goto/16 :goto_0

    .line 335
    :cond_3
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 336
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mScheduleFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->scheduleDriveBackup()V

    goto :goto_0

    .line 337
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 338
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mRestoreFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->fillRestoreList()V

    goto :goto_0

    :cond_5
    if-ne p2, v1, :cond_8

    if-eqz p3, :cond_8

    .line 316
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 317
    const-string v1, "authAccount"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 318
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 319
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 320
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "accountName"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_6

    .line 323
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mBackupFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->makeGDriveBackup()V

    goto :goto_0

    .line 324
    :cond_6
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v1, v0, :cond_7

    .line 325
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mScheduleFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->scheduleDriveBackup()V

    goto :goto_0

    .line 326
    :cond_7
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 327
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mRestoreFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->fillRestoreList()V

    .line 343
    :cond_8
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 367
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->waitForIO()V

    const/high16 v1, 0x14000000

    .line 369
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 371
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 373
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x5

    .line 82
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 86
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 89
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v1, 0x7f120144

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    const p1, 0x7f090665

    .line 91
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 92
    new-instance p1, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p1, p0, v1, v2}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$ViewPagerAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;)V

    .line 93
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const p1, 0x7f0904e4

    .line 97
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    const v1, 0x7f0c0145

    const v2, 0x1020014

    .line 98
    invoke-virtual {p1, v1, v2}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setCustomTabView(II)V

    .line 99
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setDistributeEvenly(Z)V

    .line 100
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 101
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    .line 102
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$1;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;)V

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const/4 p1, 0x0

    .line 118
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->findFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    check-cast p1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mBackupFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    goto :goto_0

    .line 122
    :cond_0
    new-instance p1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mBackupFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    .line 124
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->findFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 126
    check-cast p1, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mScheduleFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    goto :goto_1

    .line 128
    :cond_1
    new-instance p1, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mScheduleFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    :goto_1
    const/4 p1, 0x2

    .line 130
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->findFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 132
    check-cast p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mRestoreFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    return-void

    .line 134
    :cond_2
    new-instance p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mRestoreFragment:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 188
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 191
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 203
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 348
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f12004a

    .line 180
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f08018f

    .line 181
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 180
    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 183
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestAuthorization(Landroid/content/Intent;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p2, 0x3

    .line 354
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 356
    :cond_0
    const-string p1, "https://www.googleapis.com/auth/drive.file"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 357
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->newChooseAccountIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    .line 360
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 379
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 381
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivityPermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;I[I)V

    return-void
.end method

.method showDeniedForInitDriveProcessStorage()V
    .locals 2

    .line 408
    const-string v0, "Permission denied"

    const-string v1, "GET_ACCOUNTS, WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f120279

    .line 409
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method showDeniedForInitDriveProcessStorageAccount()V
    .locals 2

    .line 414
    const-string v0, "Permission denied"

    const-string v1, "GET_ACCOUNTS"

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f120279

    .line 415
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method showRationaleForInitDriveProcessStorage(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 4

    .line 387
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12024d

    .line 389
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 390
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$5;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;Lpermissions/dispatcher/PermissionRequest;)V

    .line 391
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$4;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;Lpermissions/dispatcher/PermissionRequest;)V

    const p1, 0x7f12004b

    .line 396
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 401
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 402
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
