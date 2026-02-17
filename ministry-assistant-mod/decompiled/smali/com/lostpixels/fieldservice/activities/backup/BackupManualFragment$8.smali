.class Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->createBackupNoPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackupComplete(Z)V
    .locals 5

    if-nez p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 261
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    const v1, 0x7f120374

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p1

    .line 262
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void

    .line 264
    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 265
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 267
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 269
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastManualBackupText"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->-$$Nest$fgettxtManualLastTimeText(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    const v2, 0x7f1205d9

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mDateFormatDay:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object p1, v3, v1

    const-string p1, "%s %s - %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
