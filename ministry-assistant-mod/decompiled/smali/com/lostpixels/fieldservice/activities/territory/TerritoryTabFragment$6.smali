.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->populateTerritoryListName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 505
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 506
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->-$$Nest$fgetmTerritoriesList(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 507
    const-string p3, "TerritoryID"

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide p4

    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 508
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    const/4 p3, 0x7

    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 509
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetLatestTerritory()V

    return-void
.end method
