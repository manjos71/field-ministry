.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->onSyncComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

.field final synthetic val$eSuccess:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;I)V
    .locals 0

    .line 1681
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

    iput p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->val$eSuccess:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1684
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$1600()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 1685
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->val$eSuccess:I

    if-nez v0, :cond_0

    .line 1686
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$1700()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    const v2, 0x7f120514

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->CONFIRM:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 1687
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->val$lt:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/LoadToast;->success()V

    goto/16 :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 1689
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$1800()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    const v2, 0x7f1200bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 1690
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->val$lt:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/LoadToast;->error()V

    goto/16 :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 1692
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$1900()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    const v2, 0x7f1200b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->INFO:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 1693
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->val$lt:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/LoadToast;->error()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 1695
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$2000()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    move-result-object v0

    const-string v1, "Google Drive quota exceeded"

    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 1696
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->val$lt:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/LoadToast;->error()V

    goto :goto_0

    .line 1698
    :cond_3
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$2100()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    const v2, 0x7f12050f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 1699
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->val$lt:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/LoadToast;->error()V

    goto :goto_0

    .line 1702
    :cond_4
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->val$eSuccess:I

    if-nez v0, :cond_5

    .line 1703
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->val$lt:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/LoadToast;->success()V

    goto :goto_0

    :cond_5
    if-ne v0, v2, :cond_6

    .line 1705
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->val$lt:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/LoadToast;->error()V

    goto :goto_0

    :cond_6
    if-ne v0, v1, :cond_7

    .line 1707
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->val$lt:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/LoadToast;->error()V

    goto :goto_0

    .line 1709
    :cond_7
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->val$lt:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/LoadToast;->error()V

    :goto_0
    const/4 v0, 0x1

    .line 1712
    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->setClickable(Z)V

    .line 1713
    iget v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->val$eSuccess:I

    if-nez v1, :cond_8

    .line 1714
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetCards()V

    .line 1715
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->-$$Nest$mshowCards(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    .line 1718
    :cond_8
    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->setClickable(Z)V

    .line 1720
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$2200()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1721
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$2300()Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    .line 1722
    :cond_9
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$25;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->-$$Nest$msetLastSyncTime(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    return-void
.end method
