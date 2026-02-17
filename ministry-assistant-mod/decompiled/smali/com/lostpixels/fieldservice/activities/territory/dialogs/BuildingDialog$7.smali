.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$OnScreenChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenChanged(Landroid/view/View;I)V
    .locals 6

    .line 603
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetbUserEvent(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 608
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorMap(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)[Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->add(ILjava/lang/String;)V

    const/4 p1, 0x2

    if-eq p2, v2, :cond_4

    if-ne p2, p1, :cond_0

    .line 614
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fputmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;I)V

    .line 615
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)I

    move-result v0

    if-nez v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)I

    move-result v1

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->addFloorNumber(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fputmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 618
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fputmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;I)V

    .line 619
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->addFloorNumber(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    .line 620
    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->addFloorNumber(Landroid/content/Context;)I

    move-result v0

    if-ne v0, p1, :cond_4

    .line 621
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)I

    move-result v1

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->addFloorNumber(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fputmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;I)V

    .line 626
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 627
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmtxtFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    const v5, 0x7f12026d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eq p2, v2, :cond_9

    .line 631
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0, v3}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fputbUserEvent(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;Z)V

    if-ne p2, p1, :cond_5

    .line 635
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)[Landroid/widget/EditText;

    move-result-object p2

    aget-object p2, p2, v3

    .line 637
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFlinger(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->removeViewFromFront()V

    .line 638
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFlinger(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->addViewToBack(Landroid/view/View;)V

    .line 639
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)[Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)[Landroid/widget/EditText;

    move-result-object v1

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    .line 640
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)[Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)[Landroid/widget/EditText;

    move-result-object v1

    aget-object v1, v1, p1

    aput-object v1, v0, v2

    .line 641
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)[Landroid/widget/EditText;

    move-result-object v0

    aput-object p2, v0, p1

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    .line 645
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)[Landroid/widget/EditText;

    move-result-object p2

    aget-object p2, p2, p1

    .line 647
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFlinger(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->removeViewFromBack()V

    .line 648
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFlinger(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->addViewToFront(Landroid/view/View;)V

    .line 649
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)[Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)[Landroid/widget/EditText;

    move-result-object v1

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    .line 650
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)[Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)[Landroid/widget/EditText;

    move-result-object v0

    aget-object v0, v0, v3

    aput-object v0, p1, v2

    .line 651
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)[Landroid/widget/EditText;

    move-result-object p1

    aput-object p2, p1, v3

    .line 655
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFlinger(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->setCurrentScreenNow(IZ)V

    .line 657
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)[Landroid/widget/EditText;

    move-result-object p1

    array-length p2, p1

    :goto_2
    if-ge v3, p2, :cond_8

    aget-object v0, p1, v3

    .line 658
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 665
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)[Landroid/widget/EditText;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 667
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p1, v2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fputbUserEvent(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;Z)V

    .line 671
    :cond_9
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$msetFloorNames(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V

    :cond_a
    return-void
.end method

.method public onScreenChanging(Landroid/view/View;I)V
    .locals 4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_5

    const/4 v0, 0x0

    const v1, 0x7f12026d

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 585
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)I

    move-result p2

    add-int/2addr p2, p1

    if-nez p2, :cond_0

    .line 587
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->addFloorNumber(Landroid/content/Context;)I

    move-result v2

    add-int/2addr p2, v2

    .line 588
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 589
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmtxtFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-nez p2, :cond_5

    .line 591
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_2

    .line 592
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->addFloorNumber(Landroid/content/Context;)I

    move-result v3

    if-eq v3, p1, :cond_3

    :cond_2
    if-ne p2, p1, :cond_4

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    .line 593
    invoke-static {v3}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->addFloorNumber(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 594
    :cond_3
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->addFloorNumber(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr p2, v2

    .line 595
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 596
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmtxtFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method
