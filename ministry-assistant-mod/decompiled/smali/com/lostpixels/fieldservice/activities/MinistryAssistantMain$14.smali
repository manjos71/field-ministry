.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    .locals 0

    .line 1341
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$14;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1346
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$14;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    const v0, 0x7f1204b3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->CONFIRM:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p1

    .line 1347
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 1348
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$14;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->-$$Nest$msaveAllFiles(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    .line 1349
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetCards()V

    .line 1350
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$14;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->-$$Nest$mshowCards(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    .line 1352
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$14;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->deleteMinistryFile(Landroid/content/Context;)V

    .line 1353
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$14;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->deleteServiceFile(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
