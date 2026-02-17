.class Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TerritoryAdapter;
.super Lpl/polidea/treeview/AbstractTreeViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TerritoryAdapter"
.end annotation


# instance fields
.field selected:J

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;Landroid/app/Activity;Lpl/polidea/treeview/TreeStateManager;I)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TerritoryAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    .line 246
    invoke-direct {p0, p2, p3, p4}, Lpl/polidea/treeview/AbstractTreeViewAdapter;-><init>(Landroid/app/Activity;Lpl/polidea/treeview/TreeStateManager;I)V

    const-wide/16 p1, -0x1

    .line 241
    iput-wide p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TerritoryAdapter;->selected:J

    return-void
.end method


# virtual methods
.method public getBackgroundDrawable(Lpl/polidea/treeview/TreeNodeInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 293
    invoke-virtual {p1}, Lpl/polidea/treeview/TreeNodeInfo;->getId()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;

    iget-wide v0, p1, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;->ID:J

    iget-wide v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TerritoryAdapter;->selected:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 294
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TerritoryAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p1

    .line 296
    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 286
    invoke-virtual {p0, p1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getTreeId(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;

    iget-wide v0, p1, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;->ID:J

    return-wide v0
.end method

.method public getNewChildView(Lpl/polidea/treeview/TreeNodeInfo;)Landroid/view/View;
    .locals 3

    .line 252
    invoke-virtual {p0}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c014e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 254
    invoke-virtual {p0, v0, p1}, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TerritoryAdapter;->updateView(Landroid/view/View;Lpl/polidea/treeview/TreeNodeInfo;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public handleItemClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .line 270
    move-object v0, p2

    check-cast v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;

    .line 271
    invoke-virtual {p0}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->getManager()Lpl/polidea/treeview/TreeStateManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lpl/polidea/treeview/TreeStateManager;->getNodeInfo(Ljava/lang/Object;)Lpl/polidea/treeview/TreeNodeInfo;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Lpl/polidea/treeview/TreeNodeInfo;->isWithChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-super {p0, p1, p2}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->handleItemClick(Landroid/view/View;Ljava/lang/Object;)V

    return-void

    .line 275
    :cond_0
    iget-object p1, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz p1, :cond_1

    .line 276
    iget-wide p1, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;->ID:J

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TerritoryAdapter;->selected:J

    .line 277
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 279
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TerritoryAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    iget-object p2, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->-$$Nest$monClick(Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    :cond_1
    return-void
.end method

.method public updateView(Landroid/view/View;Lpl/polidea/treeview/TreeNodeInfo;)Landroid/view/View;
    .locals 1

    const v0, 0x7f09036b

    .line 260
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    invoke-virtual {p2}, Lpl/polidea/treeview/TreeNodeInfo;->getId()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TerritoryAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->-$$Nest$fgetshouldBeWhite(Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    .line 263
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-object p1
.end method
