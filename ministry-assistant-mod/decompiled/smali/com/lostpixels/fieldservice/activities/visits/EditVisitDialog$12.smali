.class Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;
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

    .line 525
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 531
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c011a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090364

    .line 533
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView;

    .line 535
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fputmScrptureItems(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;Ljava/util/List;)V

    .line 536
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->fillScriptureArray()V

    .line 537
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 538
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    const v3, 0x7f12016e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 539
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->access$000(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 540
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 542
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 543
    :goto_0
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f090248

    .line 544
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uff0b "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    const v6, 0x7f120135

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    new-instance v4, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$1;

    invoke-direct {v4, p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;Lcom/mobeta/android/dslv/DragSortListView;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    const v5, 0x7f0c0119

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmScrptureItems(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v4, v4, v5, v6}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;Landroid/app/Activity;ILjava/util/List;)V

    .line 553
    invoke-virtual {v0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v4, 0x5

    .line 554
    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 556
    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$2;

    invoke-direct {v3, p0, v2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;)V

    invoke-virtual {v0, v3}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 569
    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureController;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-direct {v3, v4, v0, v2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureController;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;Lcom/mobeta/android/dslv/DragSortListView;Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;)V

    const v2, 0x7f0901d5

    .line 570
    invoke-virtual {v3, v2}, Lcom/mobeta/android/dslv/DragSortController;->setDragHandleId(I)V

    .line 571
    invoke-virtual {v0, v3}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 572
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 575
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;

    invoke-direct {v2, p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;Lcom/mobeta/android/dslv/DragSortListView;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 593
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$4;

    invoke-direct {v2, p0, v1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$4;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 627
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 629
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method
