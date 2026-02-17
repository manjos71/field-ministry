.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->doSyncing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Landroid/app/Dialog;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1510
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$17;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$17;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$17;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1513
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$17;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1514
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$17;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "ShowSyncWarning"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1515
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$17;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->-$$Nest$minitDriveProcess(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    return-void
.end method
