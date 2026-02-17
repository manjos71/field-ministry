.class Lpl/polidea/treeview/AbstractTreeViewAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/polidea/treeview/AbstractTreeViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/polidea/treeview/AbstractTreeViewAdapter;


# direct methods
.method constructor <init>(Lpl/polidea/treeview/AbstractTreeViewAdapter;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter$1;->this$0:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lpl/polidea/treeview/AbstractTreeViewAdapter$1;->this$0:Lpl/polidea/treeview/AbstractTreeViewAdapter;

    invoke-virtual {v0, p1}, Lpl/polidea/treeview/AbstractTreeViewAdapter;->expandCollapse(Ljava/lang/Object;)V

    return-void
.end method
