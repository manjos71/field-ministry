.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, p2}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$500(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Z)V

    .line 557
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->-$$Nest$mupdateServiceTimerTitle(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    .line 558
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
