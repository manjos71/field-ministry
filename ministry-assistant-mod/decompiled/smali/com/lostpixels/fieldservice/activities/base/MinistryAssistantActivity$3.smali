.class Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 572
    const-string p1, "android.intent.action.VIEW"

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 582
    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    const-string p1, "https://www.youtube.com/user/LostPix1s"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 579
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    const-class v0, Lcom/lostpixels/fieldservice/activities/TutorialDialog;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 575
    :cond_2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    const-string p1, "https://lostpixels.one/ministryassistant"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_3

    .line 588
    :try_start_0
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 590
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void
.end method
