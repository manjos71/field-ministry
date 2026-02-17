.class Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 639
    new-instance p1, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-direct {p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 642
    new-instance v1, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    const v3, 0x7f120381

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0800b7

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    new-instance v1, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    const v3, 0x7f120385

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0800b8

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    new-instance v1, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    const v3, 0x7f12043b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0801f7

    const/4 v6, 0x2

    invoke-direct {v1, v2, v3, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    new-instance v1, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    const v3, 0x7f12053b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08036f

    const/16 v6, 0x9

    invoke-direct {v1, v2, v3, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmbShowVideo(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    new-instance v1, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    const v3, 0x7f120549

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080388

    const/16 v6, 0x8

    invoke-direct {v1, v2, v3, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_0
    new-instance v1, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    const v3, 0x7f120481

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0802d6

    const/4 v6, 0x3

    invoke-direct {v1, v2, v3, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 651
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    const v3, 0x7f120582

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 652
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->access$300(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 653
    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 655
    :cond_1
    invoke-virtual {p1, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 657
    :goto_0
    new-instance v2, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-direct {v2, v3, v0}, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 658
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 659
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 660
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13$1;

    invoke-direct {v1, p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 690
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 691
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
