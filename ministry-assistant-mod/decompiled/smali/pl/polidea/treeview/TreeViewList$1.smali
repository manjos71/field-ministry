.class Lpl/polidea/treeview/TreeViewList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/polidea/treeview/TreeViewList;->syncAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/polidea/treeview/TreeViewList;


# direct methods
.method constructor <init>(Lpl/polidea/treeview/TreeViewList;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lpl/polidea/treeview/TreeViewList$1;->this$0:Lpl/polidea/treeview/TreeViewList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 108
    iget-object p1, p0, Lpl/polidea/treeview/TreeViewList$1;->this$0:Lpl/polidea/treeview/TreeViewList;

    invoke-static {p1}, Lpl/polidea/treeview/TreeViewList;->access$000(Lpl/polidea/treeview/TreeViewList;)Lpl/polidea/treeview/AbstractTreeViewAdapter;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->handleItemClick(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method
