.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->onCreate(Landroid/os/Bundle;)V
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

    .line 618
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$6;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 621
    invoke-static {}, Lcom/lostpixels/fieldservice/MinistryAssistant;->getInstance()Lcom/lostpixels/fieldservice/MinistryAssistant;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/lostpixels/fieldservice/MinistryAssistant;->getInstance()Lcom/lostpixels/fieldservice/MinistryAssistant;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/MinistryAssistant;->hasPermissionToTrack(Landroid/app/Application;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 622
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 623
    const-string v0, "item_id"

    const-string v1, "AddToReport_FAB"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v0, "item_name"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v0, "content_type"

    const-string v1, "action"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$6;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->getTracker()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    const-string v1, "select_content"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 628
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$6;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$600(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    return-void
.end method
