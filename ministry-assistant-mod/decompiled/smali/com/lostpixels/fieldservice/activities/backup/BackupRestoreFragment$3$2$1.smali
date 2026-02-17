.class Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestoreComplete(Z)V
    .locals 2

    .line 160
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetCards()V

    if-eqz p1, :cond_1

    .line 162
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    const v1, 0x7f1204b3

    .line 164
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 163
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    .line 169
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->deleteMinistryFile(Landroid/content/Context;)V

    .line 170
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->deleteServiceFile(Landroid/content/Context;)V

    .line 173
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    return-void

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 178
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2$1;->this$2:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    const v1, 0x7f1204b2

    .line 179
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    .line 178
    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    :cond_2
    return-void
.end method
