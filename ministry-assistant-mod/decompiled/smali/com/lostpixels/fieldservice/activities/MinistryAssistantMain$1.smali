.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;
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

    .line 171
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestAuthorization(Landroid/content/Intent;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 175
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    const-string p2, "https://www.googleapis.com/auth/drive.file"

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->-$$Nest$fputcredential(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;)V

    .line 179
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->-$$Nest$fgetcredential(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 180
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->-$$Nest$fgetcredential(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->newChooseAccountIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 183
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    const/4 v0, 0x5

    invoke-virtual {p2, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method
