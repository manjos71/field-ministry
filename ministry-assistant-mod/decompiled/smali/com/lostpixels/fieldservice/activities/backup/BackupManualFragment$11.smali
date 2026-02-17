.class Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->makeGDriveBackup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;Landroid/content/Context;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$11;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$11;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackupComplete(Z)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 343
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$11;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 344
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$11;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$11;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    const v2, 0x7f120374

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p1

    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    goto :goto_0

    .line 346
    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 347
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$11;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 348
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LastManualBackupDrive"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 349
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$11;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$11;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->-$$Nest$fgettxtManualLastTimeDrive(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$11;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    const v3, 0x7f1205d9

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$11;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mDateFormatDay:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const/4 v2, 0x2

    aput-object p1, v4, v2

    const-string p1, "%s %s - %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :cond_1
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$11;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 357
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$11;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportProgressBarIndeterminateVisibility(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
