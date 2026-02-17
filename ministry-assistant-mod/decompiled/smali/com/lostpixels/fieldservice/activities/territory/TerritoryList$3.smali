.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/ui/SortFilter$OnTabClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabClick(I)V
    .locals 8

    .line 502
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->setListDirty()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_5

    .line 504
    new-instance p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;-><init>()V

    .line 505
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->getStreetList(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Ljava/util/List;

    move-result-object p1

    .line 507
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 508
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 509
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v5, 0x7f12013e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 512
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->isLightTheme(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    const v5, 0x7f0801ff

    goto :goto_0

    :cond_0
    const v5, 0x7f0801fe

    .line 514
    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 517
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    add-int/lit8 v6, v1, 0x1

    .line 518
    invoke-static {v5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->toString(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v1

    .line 519
    invoke-static {v5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->isBuildingAddress(Landroid/util/Pair;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v4, :cond_1

    const v1, 0x7f0802d3

    goto :goto_2

    :cond_1
    const v1, 0x7f0802d2

    .line 520
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    if-nez v4, :cond_3

    const v1, 0x7f0802d5

    goto :goto_3

    :cond_3
    const v1, 0x7f0802d4

    .line 522
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    move v1, v6

    goto :goto_1

    .line 525
    :cond_4
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 526
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v4, 0x7f1201af

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 527
    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$StreetListAdapter;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {v3, v4, v4, v2, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$StreetListAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroid/content/Context;[Ljava/lang/String;Ljava/util/List;)V

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3$1;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;Ljava/util/List;)V

    invoke-virtual {v1, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 545
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 546
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_5

    :cond_5
    if-ne p1, v1, :cond_6

    .line 548
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget v2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    if-eqz v2, :cond_9

    .line 549
    iput v0, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    .line 550
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 551
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 552
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    goto :goto_5

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 555
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget v2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    if-eq v2, v0, :cond_9

    .line 556
    iput v0, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    .line 557
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 558
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 559
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    goto :goto_5

    :cond_7
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 562
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget v0, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    if-eq v0, v1, :cond_9

    .line 563
    iput v1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    .line 564
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 565
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 566
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    goto :goto_5

    :cond_8
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    .line 569
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->displayFilterDialog()V

    .line 571
    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mupdateFilterInfo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    return-void
.end method
