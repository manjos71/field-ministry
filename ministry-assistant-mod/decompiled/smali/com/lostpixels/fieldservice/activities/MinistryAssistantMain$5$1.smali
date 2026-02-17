.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .line 544
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 549
    :sswitch_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120536

    .line 550
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 551
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$300(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Z

    move-result v1

    const v2, 0x7f1204d9

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;

    iget-object v4, v4, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    const v3, 0x7f1204a6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    .line 552
    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;

    iget-object v4, v4, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 553
    :goto_0
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$400()Z

    move-result v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$1;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$1;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;)V

    invoke-virtual {p1, v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 562
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 546
    :sswitch_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$200(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V

    goto :goto_1

    .line 565
    :sswitch_2
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120107

    .line 566
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f1204ed

    .line 567
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 568
    new-instance v2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$2;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$2;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 587
    new-instance v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$3;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$3;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;)V

    const v2, 0x7f120059

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 594
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f0903c1 -> :sswitch_2
        0x7f0903c5 -> :sswitch_1
        0x7f0903c6 -> :sswitch_0
    .end sparse-switch
.end method
