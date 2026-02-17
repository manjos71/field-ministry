.class Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->fillRestoreListInternalNoPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "fillTask"
.end annotation


# instance fields
.field arrBackups:Ljava/util/ArrayList;

.field bGDrive:Z

.field bOK:Z

.field bSDCard:Z

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;Landroid/content/Context;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 280
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->bOK:Z

    .line 281
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->bSDCard:Z

    .line 282
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->bGDrive:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 278
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const/4 p1, 0x0

    .line 287
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->arrBackups:Ljava/util/ArrayList;

    .line 288
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->bSDCard:Z

    if-eqz v1, :cond_0

    .line 289
    new-instance v1, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;-><init>()V

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->val$context:Landroid/content/Context;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;->listCurrentBackups(Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IListComplete;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 290
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->bGDrive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/NetworkUtils;->testInternetConnectionNoMessage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->arrBackups:Ljava/util/ArrayList;

    new-instance v1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-direct {v1, v2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;-><init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;)V

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask$1;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask$1;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;)V

    .line 292
    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->listCurrentBackups(Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IListComplete;)Ljava/util/ArrayList;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->arrBackups:Ljava/util/ArrayList;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask$1BackupComparator;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask$1BackupComparator;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->bOK:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 309
    :goto_1
    const-string v1, "fillRestoreList"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 278
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    .line 325
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->-$$Nest$fgetmprogress(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->-$$Nest$fgetmprogress(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 327
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->-$$Nest$fgetmlstBackups(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 330
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->bOK:Z

    if-eqz p1, :cond_1

    .line 331
    new-instance p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0106

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->arrBackups:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$RestoreListAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;Landroid/app/Activity;ILjava/util/ArrayList;)V

    .line 334
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->-$$Nest$fgetmlstBackups(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->-$$Nest$fgetmlstBackups(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 339
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 340
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    const v1, 0x7f1203e5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p1

    .line 341
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    :cond_2
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->-$$Nest$fgetmchSDCard(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->bSDCard:Z

    .line 317
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->-$$Nest$fgetmchGDrive(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->bGDrive:Z

    .line 318
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 278
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    .line 0
    return-void
.end method
