.class Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 274
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    const v0, 0x7f1204b3

    .line 275
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->CONFIRM:Lde/keyboardsurfer/android/widget/crouton/Style;

    .line 274
    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p1

    .line 276
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 277
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    return-void

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    const v0, 0x7f1204b2

    .line 281
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    .line 280
    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void
.end method
