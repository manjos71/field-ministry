.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;
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

.field final synthetic val$cardsPrefs:Landroid/content/SharedPreferences;

.field final synthetic val$timerSettings:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Landroid/view/View;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->val$timerSettings:Landroid/view/View;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->val$cardsPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 535
    new-instance p1, Landroidx/appcompat/widget/PopupMenu;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->val$timerSettings:Landroid/view/View;

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 537
    invoke-virtual {p1}, Landroidx/appcompat/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {p1}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 538
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$000(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    invoke-virtual {p1}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0903c6

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 542
    :cond_0
    new-instance v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 601
    invoke-virtual {p1}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method
