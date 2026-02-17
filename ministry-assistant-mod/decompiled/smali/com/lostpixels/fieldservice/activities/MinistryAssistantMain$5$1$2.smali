.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$2;
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

    .line 568
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$2;->this$2:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 571
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 572
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$2;->this$2:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->-$$Nest$fgetserviceTimerLayout(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 573
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$2;->this$2:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->val$cardsPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 577
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$2;->this$2:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->val$cardsPrefs:Landroid/content/SharedPreferences;

    const-string v0, "prefCardsToDisplay"

    const/16 v1, -0x6001

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    const v1, -0x10001

    and-int/2addr p2, v1

    .line 579
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 580
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$2;->this$2:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 581
    const-string p2, "prefCardsToDisplayInternal"

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
    const-string v2, "14|"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 583
    const-string v2, "14,"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
